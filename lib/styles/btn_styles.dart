import 'package:flutter/material.dart';
import 'package:phone_auth_firebase/constants/constants.dart';

class ButtonStyles {
  static ButtonStyle colorBtnStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
        return PRIMARY_MATERIAL;
      },
    ),
  );
}