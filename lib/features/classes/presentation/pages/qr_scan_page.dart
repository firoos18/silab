import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:silab/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/classes/presentation/bloc/user_attendances/user_attendances_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/user_meetings/user_meetings_bloc.dart';

class QrScanPageExtra {
  final String? classId;
  final String? meetingId;

  const QrScanPageExtra({
    this.classId,
    this.meetingId,
  });
}

class QrScanPage extends StatefulWidget {
  final QrScanPageExtra qrScanPageExtra;

  const QrScanPage({
    super.key,
    required this.qrScanPageExtra,
  });

  @override
  State<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  Barcode? _barcode;
  late MobileScannerController _controller;

  void _handleBarcode(BarcodeCapture barcodes) {
    if (mounted) {
      setState(() {
        _barcode = barcodes.barcodes.firstOrNull;
      });
      if (_barcode != null && _barcode!.displayValue != null) {
        context.read<UserAttendancesBloc>().add(
              AddUserAttendances(
                classId: widget.qrScanPageExtra.classId,
                meetingId: widget.qrScanPageExtra.meetingId,
                meetingToken: _barcode!.displayValue,
              ),
            );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = MobileScannerController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserAttendancesBloc, UserAttendancesState>(
      listener: (context, state) {
        if (state is UserAttendancesLoading) {
          _controller.stop();

          showDialog(
            context: context,
            useRootNavigator: false,
            builder: (context) => const CustomLoadingIndicator(),
          );
        } else if (state is UserAttendancesSuccess) {
          Navigator.of(context, rootNavigator: true).pop();
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            snackBar(message: state.message, type: AlertType.success),
          );

          context
              .read<UserMeetingsBloc>()
              .add(GetUserMeetings(classId: widget.qrScanPageExtra.classId));
          context.pop();
        } else if (state is UserAttendancesFailed) {
          Navigator.of(context, rootNavigator: true).pop();
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            snackBar(message: state.message, type: AlertType.error),
          );

          _controller.start();
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              MobileScanner(
                controller: _controller,
                onDetect: _handleBarcode,
                scanWindow: Rect.fromCenter(
                  center: Offset(
                    MediaQuery.of(context).size.width / 2,
                    MediaQuery.of(context).size.height / 2,
                  ),
                  width: 300,
                  height: 300,
                ),
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffFFBF01),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                        left: 15,
                        bottom: 24,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => context.pop(),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(
                                  0xffF4F4F9,
                                ),
                              ),
                              child: const Icon(
                                Boxicons.bx_chevron_left,
                                size: 36,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        color: Color(0xffF4F4F9),
                      ),
                      child: const Center(
                        child: Text(
                          'Arahkan Kamera ke Kode QR untuk Presensi',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
