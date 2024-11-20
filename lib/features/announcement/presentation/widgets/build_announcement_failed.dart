import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';

class BuildAnnouncementFailed extends StatelessWidget {
  const BuildAnnouncementFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Oops, terjadi suatu kesalahan!'),
            IconButton(
              onPressed: () => context
                  .read<GetAllAnnouncementsBloc>()
                  .add(GetAllAnnouncements()),
              icon: const Icon(Boxicons.bx_refresh),
            ),
          ],
        ),
      ),
    );
  }
}
