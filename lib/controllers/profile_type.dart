import 'package:get/get.dart';

class ProfileType extends GetxController {
  bool shipper = false;
  bool transporter = false;

  bool get isTransport => transporter;

  bool get isShipper => shipper;

  void setShipper(bool newValue) {
    shipper = newValue;
    transporter = false;
    update();
  }

  void setTransporter(bool newValue) {
    shipper = false;
    transporter = newValue;
    update();
  }
}
