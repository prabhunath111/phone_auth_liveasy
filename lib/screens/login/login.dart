import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_auth_firebase/constants/app_sizes.dart';
import 'package:phone_auth_firebase/controllers/login/login_controller.dart';
import 'package:phone_auth_firebase/styles/text_styles.dart';
import 'package:phone_auth_firebase/widgets/custom_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    final LoginController loginController = Get.put(LoginController());
    String _mobile = '';
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: AppSizes.WIDTH * 0.80,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/car.png',
                    height: 150,
                    width: 150,
                  ),
                  Text(
                    'Please enter your mobile number',
                    style: CustomTextStyles.screenheader,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: AppSizes.VERTICAL_SPACE,
                  ),
                  Text(
                    'You will receive a 6 digit code to verify the next',
                    style: CustomTextStyles.title,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: AppSizes.VERTICAL_SPACE,
                  ),
                  TextField(
                    controller: textEditingController,
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    onChanged: (e) {
                      _mobile = textEditingController.text;
                    },
                    decoration: InputDecoration(
                        hintText: 'Mobile Number',
                        border: OutlineInputBorder(),
                        counter: Text('')),
                  ),
                  SizedBox(
                    height: AppSizes.VERTICAL_SPACE,
                  ),
                  GetBuilder<LoginController>(
                    builder: (logic) {
                      return CustomButton(
                        onPressed: () {
                          logic.getLogin(_mobile);
                        },
                        child: Text(
                          'NEXT',
                          style: CustomTextStyles.btnTextStyle,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
