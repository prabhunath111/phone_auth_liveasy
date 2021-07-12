import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_auth_firebase/constants/app_sizes.dart';
import 'package:phone_auth_firebase/constants/constants.dart';
import 'package:phone_auth_firebase/screens/login/login.dart';
import 'package:phone_auth_firebase/styles/text_styles.dart';
import 'package:phone_auth_firebase/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/car.png',
                height: 150.0,
                width: 150.0,
              ),
              Text(
                'Please select your Language',
                style: CustomTextStyles.screenheader,
              ),
              SizedBox(
                height: AppSizes.VERTICAL_SPACE,
              ),
              Text(
                'You can change the Language at any time',
                style: CustomTextStyles.title,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: AppSizes.VERTICAL_SPACE,
              ),
              Container(
                height: 80,
                width: AppSizes.WIDTH,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: WHITE,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: DropdownButton<String>(
                    style: TextStyle(color: BLACK),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ),
              SizedBox(
                height: AppSizes.VERTICAL_SPACE,
              ),
              Container(
                width: AppSizes.WIDTH,
                child: CustomButton(
                  child: Text(
                    'NEXT',
                    style: CustomTextStyles.btnTextStyle,
                  ),
                  onPressed: () {
                    Get.to(() => Login());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
