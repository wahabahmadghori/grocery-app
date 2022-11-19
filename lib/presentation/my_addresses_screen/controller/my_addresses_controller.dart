import '/core/app_export.dart';
import 'package:grocery_app/presentation/my_addresses_screen/models/my_addresses_model.dart';

class MyAddressesController extends GetxController {
  Rx<MyAddressesModel> myAddressesModelObj = MyAddressesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
