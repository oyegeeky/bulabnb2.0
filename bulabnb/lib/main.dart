import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controllers/otpController.dart';
import 'Repository/authentication_repository.dart';
import 'Screens/otpScreen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) =>
      Get.put(AuthenticationRepository()));
  Get.put(OTPController());
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Phone Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: OTPScreen(),
    );
  }
}
