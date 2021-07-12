import 'package:flutter/material.dart';
import 'package:phone_auth_firebase/constants/constants.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(PRIMARY),
        ),
      ),
    );
  }
}
