import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_auth_firebase/constants/app_sizes.dart';
import 'package:phone_auth_firebase/constants/constants.dart';
import 'package:phone_auth_firebase/controllers/profile_type.dart';
import 'package:phone_auth_firebase/styles/btn_styles.dart';
import 'package:phone_auth_firebase/styles/text_styles.dart';
import 'package:phone_auth_firebase/widgets/custom_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileType profileType = Get.put(ProfileType());
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Please select your profile',
                style: CustomTextStyles.screenheader,
              ),
              SizedBox(
                height: AppSizes.VERTICAL_SPACE,
              ),
              _rowContainer('Shipper', true),
              SizedBox(
                height: AppSizes.VERTICAL_SPACE,
              ),
              _rowContainer('Transporter', false),
              SizedBox(
                height: AppSizes.VERTICAL_SPACE,
              ),
              Container(
                  width: AppSizes.WIDTH,
                  child:
                      CustomButton(child: Text('CONTINUE', style: CustomTextStyles.btnTextStyle,), onPressed: () {})),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rowContainer(String title, bool isShipper) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(color: PRIMARY)),
      child: Row(
        children: [
          GetBuilder<ProfileType>(
            builder: (logic) {
              return (isShipper)
                  ? IconButton(
                      onPressed: () {
                        logic.setShipper(true);
                      },
                      icon: Icon(
                        (logic.isShipper)
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        logic.setTransporter(true);
                      },
                      icon: Icon(
                        (logic.isTransport)
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                      ),
                    );
            },
          ),
          Icon(
            (isShipper) ? Icons.local_shipping : Icons.emoji_transportation,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: CustomTextStyles.title,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lorem ipsum doler sit amet,\n consectecture adispicing',
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
