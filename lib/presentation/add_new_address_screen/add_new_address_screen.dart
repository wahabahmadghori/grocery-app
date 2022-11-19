import 'controller/add_new_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/core/utils/validation_functions.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/custom_checkbox.dart';
import 'package:grocery_app/widgets/custom_text_form_field.dart';

class AddNewAddressScreen extends GetWidget<AddNewAddressController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.green500,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: size.width,
                        margin: getMargin(
                          left: 16,
                          top: 20,
                          right: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CommonImageView(
                              svgPath: ImageConstant.imgForward26X13,
                              height: getVerticalSize(
                                26.00,
                              ),
                              width: getHorizontalSize(
                                13.00,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 15,
                                top: 1,
                                bottom: 2,
                              ),
                              child: Text(
                                "lbl_add_new_address".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratBold22WhiteA700
                                    .copyWith(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: double.infinity,
                        margin: getMargin(
                          top: 25,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextFormField(
                              width: 332,
                              focusNode: FocusNode(),
                              controller: controller.group3443Controller1,
                              hintText: "lbl_country".tr,
                              margin: getMargin(
                                left: 48,
                                top: 48,
                                right: 48,
                              ),
                              padding: TextFormFieldPadding.PaddingT25,
                              alignment: Alignment.center,
                            ),
                            CustomTextFormField(
                              width: 332,
                              focusNode: FocusNode(),
                              controller: controller.group3444Controller1,
                              hintText: "lbl_state".tr,
                              margin: getMargin(
                                left: 48,
                                top: 16,
                                right: 48,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomTextFormField(
                              width: 332,
                              focusNode: FocusNode(),
                              controller: controller.group3445Controller1,
                              hintText: "lbl_city".tr,
                              margin: getMargin(
                                left: 48,
                                top: 16,
                                right: 48,
                              ),
                              padding: TextFormFieldPadding.PaddingT25,
                              alignment: Alignment.center,
                            ),
                            CustomTextFormField(
                              width: 332,
                              focusNode: FocusNode(),
                              controller: controller.group3446Controller1,
                              hintText: "lbl_pincode".tr,
                              margin: getMargin(
                                left: 48,
                                top: 16,
                                right: 48,
                              ),
                              alignment: Alignment.center,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              },
                            ),
                            CustomTextFormField(
                              width: 332,
                              focusNode: FocusNode(),
                              controller: controller.group3447Controller1,
                              hintText: "lbl_area".tr,
                              margin: getMargin(
                                left: 48,
                                top: 16,
                                right: 48,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomTextFormField(
                              width: 332,
                              focusNode: FocusNode(),
                              controller: controller.group3448Controller1,
                              hintText: "lbl_landmark".tr,
                              margin: getMargin(
                                left: 48,
                                top: 16,
                                right: 48,
                              ),
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 48,
                                top: 16,
                                right: 48,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Obx(
                                    () => CustomCheckbox(
                                      text: "lbl_home".tr,
                                      iconSize: 17.54,
                                      value: controller.checkbox.value,
                                      onChange: (value) {
                                        controller.checkbox.value = value;
                                      },
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckbox(
                                      text: "lbl_work_office".tr,
                                      iconSize: 17.54,
                                      value: controller.checkbox1.value,
                                      padding: getPadding(
                                        left: 22,
                                      ),
                                      onChange: (value) {
                                        controller.checkbox1.value = value;
                                      },
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckbox(
                                      text: "lbl_other".tr,
                                      iconSize: 17.54,
                                      value: controller.checkbox2.value,
                                      padding: getPadding(
                                        left: 21,
                                      ),
                                      onChange: (value) {
                                        controller.checkbox2.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomButton(
                              width: 199,
                              text: "lbl_save".tr,
                              margin: getMargin(
                                left: 48,
                                top: 30,
                                right: 48,
                                bottom: 20,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
