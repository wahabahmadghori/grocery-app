import '/core/app_export.dart';
import 'package:grocery_app/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:flutter/material.dart';

class AddNewAddressController extends GetxController {
  TextEditingController group3443Controller1 = TextEditingController();

  TextEditingController group3444Controller1 = TextEditingController();

  TextEditingController group3445Controller1 = TextEditingController();

  TextEditingController group3446Controller1 = TextEditingController();

  TextEditingController group3447Controller1 = TextEditingController();

  TextEditingController group3448Controller1 = TextEditingController();

  Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

  RxBool checkbox = false.obs;

  RxBool checkbox1 = false.obs;

  RxBool checkbox2 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group3443Controller1.dispose();
    group3444Controller1.dispose();
    group3445Controller1.dispose();
    group3446Controller1.dispose();
    group3447Controller1.dispose();
    group3448Controller1.dispose();
  }
}
