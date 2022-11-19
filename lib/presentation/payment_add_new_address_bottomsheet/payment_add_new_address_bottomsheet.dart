import 'controller/payment_add_new_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/core/utils/validation_functions.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/custom_checkbox.dart';
import 'package:grocery_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentAddNewAddressBottomsheet extends StatelessWidget {
  PaymentAddNewAddressBottomsheet(this.controller);

  PaymentAddNewAddressController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
          Align(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                  child: Container(
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapImgClose();
                                },
                                child: Padding(
                                    padding: getPadding(
                                        left: 46, top: 20, right: 46),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgClose24X23,
                                        height: getVerticalSize(24.00),
                                        width: getHorizontalSize(23.00)))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 46, top: 25, right: 46),
                                    child: Text("lbl_add_new_address".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratSemiBold22
                                            .copyWith()))),
                            CustomTextFormField(
                                width: 332,
                                focusNode: FocusNode(),
                                controller: controller.group3443Controller,
                                hintText: "lbl_country".tr,
                                margin: getMargin(left: 46, top: 27, right: 46),
                                padding: TextFormFieldPadding.PaddingT25,
                                alignment: Alignment.center),
                            CustomTextFormField(
                                width: 332,
                                focusNode: FocusNode(),
                                controller: controller.group3444Controller,
                                hintText: "lbl_state".tr,
                                margin: getMargin(left: 46, top: 16, right: 46),
                                alignment: Alignment.center),
                            CustomTextFormField(
                                width: 332,
                                focusNode: FocusNode(),
                                controller: controller.group3445Controller,
                                hintText: "lbl_city".tr,
                                margin: getMargin(left: 46, top: 16, right: 46),
                                padding: TextFormFieldPadding.PaddingT25,
                                alignment: Alignment.center),
                            CustomTextFormField(
                                width: 332,
                                focusNode: FocusNode(),
                                controller: controller.group3446Controller,
                                hintText: "lbl_pincode".tr,
                                margin: getMargin(left: 46, top: 16, right: 46),
                                padding: TextFormFieldPadding.PaddingT24,
                                alignment: Alignment.center,
                                validator: (value) {
                                  if (!isNumeric(value)) {
                                    return "Please enter valid number";
                                  }
                                  return null;
                                }),
                            CustomTextFormField(
                                width: 332,
                                focusNode: FocusNode(),
                                controller: controller.group3447Controller,
                                hintText: "lbl_area".tr,
                                margin: getMargin(left: 46, top: 16, right: 46),
                                alignment: Alignment.center),
                            CustomTextFormField(
                                width: 332,
                                focusNode: FocusNode(),
                                controller: controller.group3448Controller,
                                hintText: "lbl_landmark".tr,
                                margin: getMargin(left: 46, top: 16, right: 46),
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 46, top: 16, right: 84),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Obx(() => CustomCheckbox(
                                                    text: "lbl_home".tr,
                                                    iconSize: 17.54,
                                                    value: controller
                                                        .checkbox.value,
                                                    padding:
                                                        getPadding(bottom: 16),
                                                    onChange: (value) {
                                                      controller.checkbox
                                                          .value = value;
                                                    })),
                                                Container(
                                                    height:
                                                        getVerticalSize(18.00),
                                                    width: getHorizontalSize(
                                                        17.00),
                                                    margin: getMargin(
                                                        left: 22, bottom: 16),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    2.00)),
                                                        border: Border.all(
                                                            color: ColorConstant
                                                                .gray507,
                                                            width:
                                                                getHorizontalSize(
                                                                    1.00)))),
                                                Container(
                                                    width: getHorizontalSize(
                                                        46.00),
                                                    margin: getMargin(left: 7),
                                                    child: Text(
                                                        "lbl_work_office".tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratRegular14Gray503
                                                            .copyWith()))
                                              ]),
                                          Obx(() => CustomCheckbox(
                                              text: "lbl_other".tr,
                                              iconSize: 17.54,
                                              value: controller.checkbox1.value,
                                              padding: getPadding(
                                                  left: 66, bottom: 16),
                                              onChange: (value) {
                                                controller.checkbox1.value =
                                                    value;
                                              }))
                                        ]))),
                            CustomButton(
                                width: 199,
                                text: "lbl_save".tr,
                                margin: getMargin(
                                    left: 46, top: 14, right: 46, bottom: 20),
                                alignment: Alignment.center)
                          ]))))
        ])));
  }

  onTapImgClose() {
    Get.back();
  }
}
