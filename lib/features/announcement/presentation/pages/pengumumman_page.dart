import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/announcement/presentation/blocs/get_announcement/get_announcement_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

class PengumumanPageExtra {
  final String? title;
  final String? body;
  final String? type;
  final String? author;
  final String? createdAt;

  const PengumumanPageExtra({
    this.author,
    this.body,
    this.title,
    this.type,
    this.createdAt,
  });
}

class PengumumanPage extends StatefulWidget {
  // final PengumumanPageExtra pengumumanPageExtra;
  final String? id;

  const PengumumanPage({
    super.key,
    // required this.pengumumanPageExtra,
    this.id,
  });

  @override
  State<PengumumanPage> createState() => _PengumumanPageState();
}

class _PengumumanPageState extends State<PengumumanPage> {
  @override
  void initState() {
    context.read<GetAnnouncementBloc>().add(GetAnnouncement(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetAnnouncementBloc, GetAnnouncementState>(
      listener: (context, state) {
        if (state is GetAnnouncementFailed) {
          if (state.message == 'jwt expired') {
            context.goNamed('authentication');
          } else {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              snackBar(
                type: AlertType.error,
                message: state.message,
              ),
            );
          }
        }
      },
      builder: (context, state) {
        if (state is GetAnnouncementLoaded) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Material(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                  left: 15,
                  top: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.announcement!.title!,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${state.announcement!.author!}, ${DateTime.parse(state.announcement!.created_at!).toLocal().difference(DateTime.now()).inDays != 0 ? DateTime.parse(state.announcement!.created_at!).toLocal() : timeago.format(DateTime.parse(state.announcement!.created_at!).toLocal())}",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff1d1d1d).withValues(alpha: 0.3),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      state.announcement!.body!,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
