import 'controller/contact_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/core/utils/validation_functions.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/custom_text_form_field.dart';

class ContactUsScreen extends GetWidget<ContactUsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.green500,
        body: Column(
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                  margin: getMargin(
                    top: 20,
                  ),
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
                                  left: 16,
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_contact_us".tr,
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
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: SingleChildScrollView(
                            padding: getPadding(
                              top: 25,
                            ),
                            child: Container(
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL30,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: double.infinity,
                                      margin: getMargin(
                                        left: 15,
                                        top: 30,
                                        right: 15,
                                      ),
                                      decoration: AppDecoration
                                          .outlineBlack9000c
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 21,
                                              top: 17,
                                              right: 21,
                                            ),
                                            child: Text(
                                              "lbl_get_in_touch".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold22Black905
                                                  .copyWith(),
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              355.00,
                                            ),
                                            margin: getMargin(
                                              left: 21,
                                              top: 36,
                                              right: 20,
                                              bottom: 27,
                                            ),
                                            child: Text(
                                              "msg_one_of_our_work".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtMontserratRegular14Gray600
                                                  .copyWith(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 15,
                                      top: 25,
                                      right: 15,
                                    ),
                                    child: Text(
                                      "lbl_your_details".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold22Black905
                                          .copyWith(),
                                    ),
                                  ),
                                  CustomTextFormField(
                                    width: 396,
                                    focusNode: FocusNode(),
                                    controller: controller.frameOneController1,
                                    hintText: "lbl_first_name".tr,
                                    margin: getMargin(
                                      left: 15,
                                      top: 14,
                                      right: 15,
                                    ),
                                    alignment: Alignment.center,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    },
                                  ),
                                  CustomTextFormField(
                                    width: 396,
                                    focusNode: FocusNode(),
                                    controller: controller.frameTwoController1,
                                    hintText: "lbl_last_name".tr,
                                    margin: getMargin(
                                      left: 15,
                                      top: 16,
                                      right: 15,
                                    ),
                                    alignment: Alignment.center,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    },
                                  ),
                                  CustomTextFormField(
                                    width: 396,
                                    focusNode: FocusNode(),
                                    controller: controller.frameThreeController,
                                    hintText: "lbl_email".tr,
                                    margin: getMargin(
                                      left: 15,
                                      top: 16,
                                      right: 15,
                                    ),
                                    alignment: Alignment.center,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    },
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: getMargin(
                                        left: 15,
                                        top: 16,
                                        right: 15,
                                      ),
                                      decoration:
                                          AppDecoration.fillGray102.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 15,
                                              top: 19,
                                              bottom: 18,
                                            ),
                                            child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgImage27X25,
                                              height: getVerticalSize(
                                                27.00,
                                              ),
                                              width: getHorizontalSize(
                                                26.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 29,
                                              bottom: 28,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowdownBlack9056X13,
                                              height: getVerticalSize(
                                                7.00,
                                              ),
                                              width: getHorizontalSize(
                                                14.00,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              48.00,
                                            ),
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                            margin: getMargin(
                                              left: 18,
                                              top: 8,
                                              bottom: 8,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.bluegray101,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 25,
                                              top: 23,
                                              bottom: 22,
                                            ),
                                            child: Text(
                                              "lbl_phone_number".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRegular18Gray503
                                                  .copyWith(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: double.infinity,
                                      margin: getMargin(
                                        left: 15,
                                        top: 16,
                                        right: 15,
                                      ),
                                      decoration:
                                          AppDecoration.fillGray102.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 16,
                                                top: 15,
                                                right: 16,
                                                bottom: 131,
                                              ),
                                              child: Text(
                                                "lbl_additional_info".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular18Gray503
                                                    .copyWith(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomButton(
                                    width: 200,
                                    text: "lbl_send_message".tr,
                                    margin: getMargin(
                                      left: 15,
                                      top: 30,
                                      right: 15,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: getMargin(
                                        left: 15,
                                        top: 24,
                                        right: 15,
                                      ),
                                      decoration:
                                          AppDecoration.fillGray103.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 42,
                                              top: 18,
                                              bottom: 18,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgLocation24X15,
                                              height: getVerticalSize(
                                                24.00,
                                              ),
                                              width: getHorizontalSize(
                                                15.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 21,
                                              top: 24,
                                              bottom: 21,
                                            ),
                                            child: Text(
                                              "msg_2464_royal_ln".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold14Green500
                                                  .copyWith(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: getMargin(
                                        left: 15,
                                        top: 24,
                                        right: 15,
                                      ),
                                      decoration:
                                          AppDecoration.fillGray103.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 38,
                                              top: 18,
                                              bottom: 18,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgCall,
                                              height: getSize(
                                                24.00,
                                              ),
                                              width: getSize(
                                                24.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 16,
                                              top: 24,
                                              bottom: 21,
                                            ),
                                            child: Text(
                                              "msg_1_773_600_48".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold14Green500
                                                  .copyWith(),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 8,
                                              top: 31,
                                              bottom: 14,
                                            ),
                                            child: Text(
                                              "lbl2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold14Green500
                                                  .copyWith(),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 8,
                                              top: 24,
                                              bottom: 21,
                                            ),
                                            child: Text(
                                              "msg_1_773_600_482".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold14Green500
                                                  .copyWith(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomTextFormField(
                                    width: 396,
                                    focusNode: FocusNode(),
                                    controller: controller.emailOneController,
                                    hintText: "msg_sggrocery_gmail".tr,
                                    margin: getMargin(
                                      left: 15,
                                      top: 24,
                                      right: 15,
                                      bottom: 20,
                                    ),
                                    variant: TextFormFieldVariant.FillGray103,
                                    padding: TextFormFieldPadding.PaddingT25,
                                    fontStyle: TextFormFieldFontStyle
                                        .MontserratSemiBold14,
                                    textInputAction: TextInputAction.done,
                                    alignment: Alignment.center,
                                    prefix: Container(
                                      margin: getMargin(
                                        left: 30,
                                        top: 21,
                                        right: 16,
                                        bottom: 21,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgMail,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      minWidth: getSize(
                                        18.00,
                                      ),
                                      minHeight: getSize(
                                        18.00,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.green500,
              ),
              child: Padding(
                padding: getPadding(
                  top: 23,
                  bottom: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgCar,
                        height: getSize(
                          21.00,
                        ),
                        width: getSize(
                          21.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgIcon,
                        height: getVerticalSize(
                          23.00,
                        ),
                        width: getHorizontalSize(
                          24.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgClock,
                        height: getVerticalSize(
                          23.00,
                        ),
                        width: getHorizontalSize(
                          21.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgClock20X24,
                        height: getVerticalSize(
                          20.00,
                        ),
                        width: getHorizontalSize(
                          24.00,
                        ),
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgUser24X18,
                      height: getVerticalSize(
                        24.00,
                      ),
                      width: getHorizontalSize(
                        18.00,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
