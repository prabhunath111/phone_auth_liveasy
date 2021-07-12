import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_auth_firebase/constants/app_sizes.dart';
import 'package:phone_auth_firebase/constants/constants.dart';
import 'package:phone_auth_firebase/styles/text_styles.dart';
import 'package:phone_auth_firebase/widgets/custom_button.dart';

class ErrorCard extends StatelessWidget {
  const ErrorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WHITE,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Error',
              style: CustomTextStyles.title,
            ),
            SizedBox(
              height: AppSizes.VERTICAL_SPACE,
            ),
            Text(
              'Something went wrong',
              style: CustomTextStyles.desc,
            ),
            SizedBox(
              height: AppSizes.VERTICAL_SPACE,
            ),
            CustomButton(
              child: Text(
                'OK',
                style: CustomTextStyles.btnTextStyle,
              ),
              onPressed: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}
