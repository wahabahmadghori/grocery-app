import '/core/app_export.dart';
import 'package:grocery_app/presentation/login_with_email_id_screen/models/login_with_email_id_model.dart';
import 'package:flutter/material.dart';

class LoginWithEmailIdController extends GetxController {
  TextEditingController group6022Controller = TextEditingController();

  TextEditingController group6023Controller = TextEditingController();

  Rx<LoginWithEmailIdModel> loginWithEmailIdModelObj =
      LoginWithEmailIdModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group6022Controller.dispose();
    group6023Controller.dispose();
  }
}
