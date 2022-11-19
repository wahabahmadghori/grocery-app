import '/core/app_export.dart';
import 'package:grocery_app/presentation/user_screen/models/user_model.dart';

class UserController extends GetxController {
  Rx<UserModel> userModelObj = UserModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
