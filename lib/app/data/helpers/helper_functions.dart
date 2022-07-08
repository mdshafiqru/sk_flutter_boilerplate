import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../views/auth/signin_view.dart';
import '../constants/app_string.dart';

logout() {
  GetStorage().write(LOGGED_IN, false);
  Get.offAll(() => SigninView());
}
