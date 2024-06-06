import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab/features/authentication/presentation/widgets/log_out_button.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/select_subjects/presentation/widgets/selected_subject_list_view.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';
import 'package:silab/features/user_details/presentation/widgets/user_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    context.read<UserDetailsBloc>().add(GetUserDetails());
    context.read<SelectedSubjectByNimBloc>().add(GetUserSelectedSubjects());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SelectedSubjectByNimBloc, SelectedSubjectByNimState>(
          listener: (context, state) {
            if (state is SelectedSubjectByNimLoading) {
              showDialog(
                context: context,
                useRootNavigator: true,
                builder: (context) => const CustomLoadingIndicator(),
              );
            } else {
              context.pop();
            }
          },
        ),
        BlocListener<UserDetailsBloc, UserDetailsState>(
          listener: (context, state) {
            if (state is UserDetailLoading) {
              showDialog(
                context: context,
                useRootNavigator: true,
                builder: (context) => const CustomLoadingIndicator(),
              );
            } else {
              context.pop();
            }
          },
        ),
      ],
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<UserDetailsBloc>().add(GetUserDetails());
          context
              .read<SelectedSubjectByNimBloc>()
              .add(GetUserSelectedSubjects());
        },
        child: ListView(
          padding: const EdgeInsets.only(top: 16),
          children: const [
            UserCard(),
            SelectedSubjectListView(),
            SizedBox(height: 24),
            LogOutButton()
          ],
        ),
      ),
    );
  }
}
