import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:phone_auth_firebase/screens/home/home.dart';
import 'package:phone_auth_firebase/widgets/common_loading/loading.dart';
import 'package:phone_auth_firebase/widgets/dialogs.dart';

class LoginController extends GetxController {
  void getLogin(String mobile) async {

    ShowDialog.showLoading(Loading());

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91' + mobile,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((UserCredential userCredential) {
          Get.to(() => Home());
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        ShowDialog.showErrorDialog();
      },
      codeSent: (String verificationId, int? resendToken) {
        print("line25 , $verificationId  token $resendToken");
      },
      timeout: const Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {
        print("line29 , $verificationId");
      },
    );
  }
}
