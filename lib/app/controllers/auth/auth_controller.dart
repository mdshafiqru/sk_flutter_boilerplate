import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sk_flutter_boilerplate/app/data/constants/app_string.dart';
import 'package:sk_flutter_boilerplate/app/views/dashboard/home/home_view.dart';

class AuthController extends GetxController {
  var name = ''.obs;
  var email = ''.obs;
  var password = ''.obs;
  var creatingAccount = false.obs;
  var logingIn = false.obs;
  var hidePassword = true.obs;

  signup() async {
    if (!creatingAccount.value) {
      creatingAccount.value = true;
      Future.delayed(Duration(seconds: 1)).then((value) {
        creatingAccount.value = false;
        GetStorage().write(LOGGED_IN, true);
        Get.offAll(() => HomeView());
      });
    }
  }

  login() async {
    if (!logingIn.value) {
      logingIn.value = true;
      Future.delayed(Duration(seconds: 1)).then((value) {
        logingIn.value = false;
        GetStorage().write(LOGGED_IN, true);
        Get.offAll(() => HomeView());
      });
    }
  }
}
