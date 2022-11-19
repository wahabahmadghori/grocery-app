import '/core/app_export.dart';
import 'package:grocery_app/presentation/contact_us_screen/models/contact_us_model.dart';
import 'package:flutter/material.dart';

class ContactUsController extends GetxController {
  TextEditingController frameOneController1 = TextEditingController();

  TextEditingController frameTwoController1 = TextEditingController();

  TextEditingController frameThreeController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  Rx<ContactUsModel> contactUsModelObj = ContactUsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController1.dispose();
    frameTwoController1.dispose();
    frameThreeController.dispose();
    emailOneController.dispose();
  }
}
