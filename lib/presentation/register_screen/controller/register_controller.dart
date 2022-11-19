import '/core/app_export.dart';
import 'package:grocery_app/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  TextEditingController group6022Controller1 = TextEditingController();

  TextEditingController group6022OneController = TextEditingController();

  TextEditingController group6023Controller1 = TextEditingController();

  TextEditingController group6023OneController = TextEditingController();

  TextEditingController group6023TwoController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group6022Controller1.dispose();
    group6022OneController.dispose();
    group6023Controller1.dispose();
    group6023OneController.dispose();
    group6023TwoController.dispose();
  }
}
