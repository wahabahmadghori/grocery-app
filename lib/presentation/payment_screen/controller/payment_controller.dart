import '/core/app_export.dart';
import 'package:grocery_app/presentation/payment_screen/models/payment_model.dart';
import 'package:flutter/material.dart';

class PaymentController extends GetxController {
  TextEditingController frameController = TextEditingController();

  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameTwoController = TextEditingController();

  TextEditingController frameFiveController = TextEditingController();

  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

  RxString radioGroup = "".obs;

  RxString radioGroup1 = "".obs;

  RxString radioGroup2 = "".obs;

  RxString radioGroup3 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameController.dispose();
    frameOneController.dispose();
    frameTwoController.dispose();
    frameFiveController.dispose();
  }
}
