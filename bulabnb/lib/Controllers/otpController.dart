import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Repository/authentication_repository.dart';
import '../Screens/DashBoard.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find() ;


  void verifyOTP(String otp)async{
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const DashBoard()) : Get.back();
  }
}