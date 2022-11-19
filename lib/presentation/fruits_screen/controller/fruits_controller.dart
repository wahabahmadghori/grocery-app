import '/core/app_export.dart';
import 'package:grocery_app/presentation/fruits_screen/models/fruits_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class FruitsController extends GetxController {
  TextEditingController group2989Controller = TextEditingController();

  Rx<FruitsModel> fruitsModelObj = FruitsModel().obs;

  TextEditingController group2989OneController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group2989Controller.dispose();
    group2989OneController.dispose();
  }
}
