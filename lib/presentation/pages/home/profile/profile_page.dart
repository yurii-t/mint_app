// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/presentation/bloc/user/bloc/user_bloc.dart';
import 'package:mint_app/presentation/pages/home/profile/widgets/menu_options_column.dart';
import 'package:mint_app/presentation/pages/home/profile/widgets/personal_data_list.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final UserBloc _userBloc = di.sl.get();
  final _pageController = PageController();

  final pageIndex = ValueNotifier<int>(0);
  @override
  void initState() {
    _userBloc.add(const UserEvent.getUserStream());

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    pageIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocBuilder<UserBloc, UserState>(
        bloc: _userBloc,
        builder: (context, state) {
          if (state.status == BlocStatus.loading) {
            return const Center(
              child: SizedBox.square(
                dimension: 24,
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (state.status == BlocStatus.loaded) {
            final profileImage = state.currentUser?.profileImage ?? '';

            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: AppColors.blue,
                  expandedHeight: 144.h,
                  flexibleSpace: FlexibleSpaceBar(
                    background: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          ValueListenableBuilder(
                            valueListenable: pageIndex,
                            builder: (context, value, child) => value == 1
                                ? Positioned(
                                    top: 20.h,
                                    left: 10.w,
                                    child: GestureDetector(
                                      onTap: () {
                                        _pageController.previousPage(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Row(children: [
                                        const Icon(
                                          Icons.chevron_left,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          l10n.backButton,
                                          style: AppTextStyles.regularText
                                              .copyWith(color: Colors.white),
                                        ),
                                      ]),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: profileImage != ''
                                      ? NetworkImage(profileImage)
                                      : null,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '${state.currentUser?.firstName} ${state.currentUser?.lastName}',
                                  style: AppTextStyles.boldNormal.copyWith(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                                Text(
                                  '${state.currentUser?.phoneNumber}',
                                  style: AppTextStyles.regularText.copyWith(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: PageView(
                    onPageChanged: (value) => pageIndex.value = value,
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: [
                      MenuOptionsColumn(
                        paymentCards: state.currentUser?.paymentCards ?? [],
                        onNextPage: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                      PersonalDataList(
                        userBloc: _userBloc,
                        currentUser: state.currentUser,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }

          return const Center(
            child: Text('Error'),
          );
        },
      ),
    );
  }
}
