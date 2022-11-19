import '/core/app_export.dart';
import 'package:grocery_app/presentation/payment_add_new_address_bottomsheet/models/payment_add_new_address_model.dart';
import 'package:flutter/material.dart';

class PaymentAddNewAddressController extends GetxController {
  TextEditingController group3443Controller = TextEditingController();

  TextEditingController group3444Controller = TextEditingController();

  TextEditingController group3445Controller = TextEditingController();

  TextEditingController group3446Controller = TextEditingController();

  TextEditingController group3447Controller = TextEditingController();

  TextEditingController group3448Controller = TextEditingController();

  Rx<PaymentAddNewAddressModel> paymentAddNewAddressModelObj =
      PaymentAddNewAddressModel().obs;

  RxBool checkbox = false.obs;

  RxBool checkbox1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group3443Controller.dispose();
    group3444Controller.dispose();
    group3445Controller.dispose();
    group3446Controller.dispose();
    group3447Controller.dispose();
    group3448Controller.dispose();
  }
}
