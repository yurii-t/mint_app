import 'package:flutter/material.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/user/bloc/user_bloc.dart';
import 'package:mint_app/presentation/pages/home/profile/widgets/info_text_field.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class PersonalDataList extends StatelessWidget {
  const PersonalDataList({
    required this.userBloc,
    required this.currentUser,
    super.key,
  });
  final CurrentUser? currentUser;
  final UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;
    final firstName = currentUser?.firstName ?? '';
    final lastName = currentUser?.lastName ?? '';
    final dateOfBirth = currentUser?.dateOfBirth ?? '';
    final phoneNumber = currentUser?.phoneNumber ?? '';

    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 0,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        children: [
          Text(
            l10n.personalData,
            style: AppTextStyles.boldNormal,
          ),
          InfoTextField(
            onConfirm: (firstName) =>
                userBloc.add(UserEvent.changeFirstName(firstName)),
            hint: firstName != '' ? firstName : l10n.firstName,
          ),
          InfoTextField(
            onConfirm: (lastName) =>
                userBloc.add(UserEvent.changeLastName(lastName)),
            hint: lastName != '' ? lastName : l10n.lasttName,
          ),
          InfoTextField(
            onConfirm: (dob) => userBloc.add(UserEvent.changeDob(dob)),
            hint: dateOfBirth != '' ? dateOfBirth : l10n.dateOfBirth,
          ),
          InfoTextField(
            onConfirm: (phoneNumber) => phoneNumber,
            hint: phoneNumber != '' ? phoneNumber : l10n.phoneNumber,
            readOnly: true,
          ),
        ],
      ),
    );
  }
}
