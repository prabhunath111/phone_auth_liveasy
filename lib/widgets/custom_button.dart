import 'package:flutter/material.dart';
import 'package:phone_auth_firebase/constants/app_sizes.dart';
import 'package:phone_auth_firebase/styles/btn_styles.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const CustomButton({Key? key, required this.child, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.HEIGHT * 0.07,
      width: AppSizes.WIDTH * 0.8,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ButtonStyles.colorBtnStyle,
      ),
    );
  }
}
