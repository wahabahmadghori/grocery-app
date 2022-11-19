import '/core/app_export.dart';
import 'package:grocery_app/presentation/my_wallet_screen/models/my_wallet_model.dart';

class MyWalletController extends GetxController {
  Rx<MyWalletModel> myWalletModelObj = MyWalletModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
