import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controllers/otpController.dart';
import 'Repository/authentication_repository.dart';
import 'Screens/otpScreen.dart';
import 'firebase_options.dart';
import 'dart:ffi';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) =>
      Get.put(AuthenticationRepository()));
  Get.put(OTPController());
  runApp(
      DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) =>  MyApp(),


      ));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,


      title: 'Phone Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: OTPScreen(),
    );
  }
}
