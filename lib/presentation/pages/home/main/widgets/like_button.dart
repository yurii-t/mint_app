// ignore_for_file: avoid-non-null-assertion, deprecated_member_use_from_same_package
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/data/models/doctor.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/favorite/bloc/favorite_bloc.dart';
import 'package:mint_app/theme/app_colors.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({required this.doctor, required this.isSettings, super.key});
  final Doctor doctor;
  final bool isSettings;

  @override
  Widget build(BuildContext context) {
    final FavoriteBloc _favoriteBloc = di.sl.get();
    final AppLocalizations l10n = context.l10n;

    return BlocSelector<FavoriteBloc, FavoriteState, List<Doctor>>(
      bloc: _favoriteBloc,
      selector: (state) => state.currentUser?.favoriteDoctors ?? [],
      builder: (context, favoriteList) {
        return GestureDetector(
          onTap: () {
            if (!isSettings) {
              _favoriteBloc.add(
                FavoriteEvent.addDoctorToFavorite(doctor: doctor),
              );
            } else {
              showCupertinoDialog<Widget>(
                context: context,
                useRootNavigator: false,
                builder: (_) => CupertinoAlertDialog(
                  title: Text(l10n.favoriteRemove),
                  content: Text(
                    l10n.removeThisDoctor,
                  ),
                  actions: [
                    CupertinoButton(
                      child: const Text('Yes'),
                      onPressed: () {
                        _favoriteBloc.add(
                          FavoriteEvent.addDoctorToFavorite(doctor: doctor),
                        );

                        context.router.pop();
                      },
                    ),
                    CupertinoButton(
                      child: Text(
                        l10n.no,
                        style: const TextStyle(color: Colors.red),
                      ),
                      onPressed: () {
                        context.router.pop();
                      },
                    ),
                  ],
                ),
              );
            }
          },
          child: favoriteList.contains(doctor)
              ? const $AssetsIconsGen()
                  .favoriteFilled
                  .svg(color: AppColors.black)
              : const $AssetsIconsGen().favorite.svg(color: AppColors.black),
        );
      },
    );
  }
}
