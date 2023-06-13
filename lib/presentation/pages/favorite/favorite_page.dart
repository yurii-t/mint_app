import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/data/models/doctor.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/user/bloc/user_bloc.dart';
import 'package:mint_app/presentation/pages/home/main/widgets/doctor_container.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserBloc _userBloc = di.sl.get();
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: AppColors.background,
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {
            context.router.pop();
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
              Text(
                l10n.backButton,
                style: AppTextStyles.regularText,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: BlocSelector<UserBloc, UserState, List<Doctor>>(
          bloc: _userBloc,
          selector: (state) => state.currentUser?.favoriteDoctors ?? [],
          builder: (context, doctors) {
            return doctors.isEmpty
                ? Center(child: Text(l10n.noFvoriteDoctors))
                : ListView.builder(
                    itemCount: doctors.length,
                    itemBuilder: (context, index) => DoctorContainer(
                      doctor: doctors[index],
                      isSettings: true,
                    ),
                  );
          },
        ),
      ),
    );
  }
}
