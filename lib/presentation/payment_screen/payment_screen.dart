import '../payment_screen/widgets/payment_item_widget.dart';
import 'controller/payment_controller.dart';
import 'models/payment_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/core/utils/validation_functions.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/custom_icon_button.dart';
import 'package:grocery_app/widgets/custom_radio_button.dart';
import 'package:grocery_app/widgets/custom_text_form_field.dart';

class PaymentScreen extends GetWidget<PaymentController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.green500,
        body: Form(
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgForward26X13,
                            height: getVerticalSize(
                              26.00,
                            ),
                            width: getHorizontalSize(
                              13.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 5,
                          ),
                          child: Text(
                            "lbl_payment".tr,
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
                        top: 23,
                      ),
                      child: Container(
                        height: getVerticalSize(
                          1958.00,
                        ),
                        width: size.width,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 25,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "lbl_contact_details".tr,
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
                                      controller: controller.frameController,
                                      hintText: "lbl_first_name".tr,
                                      margin: getMargin(
                                        left: 16,
                                        top: 27,
                                        right: 16,
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
                                      controller: controller.frameOneController,
                                      hintText: "lbl_last_name".tr,
                                      margin: getMargin(
                                        left: 16,
                                        top: 16,
                                        right: 16,
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
                                      controller: controller.frameTwoController,
                                      hintText: "lbl_email".tr,
                                      margin: getMargin(
                                        left: 16,
                                        top: 16,
                                        right: 16,
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
                                          left: 16,
                                          top: 16,
                                          right: 16,
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
                                                left: 14,
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
                                                  25.00,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 9,
                                                top: 29,
                                                bottom: 28,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownBlack905,
                                                height: getVerticalSize(
                                                  7.00,
                                                ),
                                                width: getHorizontalSize(
                                                  13.00,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                64.00,
                                              ),
                                              width: getHorizontalSize(
                                                1.00,
                                              ),
                                              margin: getMargin(
                                                left: 18,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.bluegray101,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 24,
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
                                    Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 34,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "msg_choose_delivery".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold22Black905
                                            .copyWith(),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 16,
                                          top: 24,
                                          right: 16,
                                        ),
                                        child: Obx(
                                          () => ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .paymentModelObj
                                                .value
                                                .paymentItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              PaymentItemModel model =
                                                  controller
                                                      .paymentModelObj
                                                      .value
                                                      .paymentItemList[index];
                                              return PaymentItemWidget(
                                                model,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 16,
                                          top: 17,
                                          right: 16,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgPlus18X17,
                                                height: getVerticalSize(
                                                  18.00,
                                                ),
                                                width: getHorizontalSize(
                                                  17.00,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 7,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "lbl_add_new_address".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold18
                                                    .copyWith(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 32,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "msg_do_you_have_a_p".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold18Black905
                                            .copyWith(),
                                      ),
                                    ),
                                    CustomTextFormField(
                                      width: 396,
                                      focusNode: FocusNode(),
                                      controller:
                                          controller.frameFiveController,
                                      hintText: "lbl_enter_your_code".tr,
                                      margin: getMargin(
                                        left: 16,
                                        top: 12,
                                        right: 16,
                                      ),
                                      padding: TextFormFieldPadding.PaddingT25,
                                      textInputAction: TextInputAction.done,
                                      alignment: Alignment.center,
                                      prefix: Container(
                                        margin: getMargin(
                                          left: 25,
                                          top: 20,
                                          right: 10,
                                          bottom: 20,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgOffer,
                                        ),
                                      ),
                                      prefixConstraints: BoxConstraints(
                                        minWidth: getSize(
                                          23.00,
                                        ),
                                        minHeight: getSize(
                                          23.00,
                                        ),
                                      ),
                                    ),
                                    CustomButton(
                                      width: 200,
                                      text: "lbl_apply_now".tr,
                                      margin: getMargin(
                                        left: 16,
                                        top: 24,
                                        right: 16,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 34,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "msg_choose_payment".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold22Gray800
                                            .copyWith(),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: double.infinity,
                                        margin: getMargin(
                                          left: 16,
                                          top: 16,
                                          right: 16,
                                        ),
                                        decoration:
                                            AppDecoration.fillGray103.copyWith(
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
                                              child: CustomRadioButton(
                                                text: "msg_cash_on_deliver".tr,
                                                iconSize: 18,
                                                value: "text",
                                                groupValue:
                                                    controller.radioGroup.value,
                                                margin: getMargin(
                                                  left: 17,
                                                  top: 20,
                                                  right: 17,
                                                  bottom: 17,
                                                ),
                                                onChange: (value) {
                                                  controller.radioGroup.value =
                                                      value;
                                                },
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
                                          left: 16,
                                          top: 16,
                                          right: 16,
                                        ),
                                        decoration:
                                            AppDecoration.fillGray103.copyWith(
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
                                              child: CustomRadioButton(
                                                text: "lbl_upi".tr,
                                                iconSize: 18,
                                                value: "text",
                                                groupValue: controller
                                                    .radioGroup1.value,
                                                margin: getMargin(
                                                  left: 17,
                                                  top: 20,
                                                  right: 17,
                                                  bottom: 19,
                                                ),
                                                onChange: (value) {
                                                  controller.radioGroup1.value =
                                                      value;
                                                },
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
                                          left: 16,
                                          top: 16,
                                          right: 16,
                                        ),
                                        decoration:
                                            AppDecoration.fillGray103.copyWith(
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
                                              child: CustomRadioButton(
                                                text: "lbl_wallet".tr,
                                                iconSize: 18,
                                                value: "text",
                                                groupValue: controller
                                                    .radioGroup2.value,
                                                margin: getMargin(
                                                  left: 17,
                                                  top: 19,
                                                  right: 17,
                                                  bottom: 20,
                                                ),
                                                onChange: (value) {
                                                  controller.radioGroup2.value =
                                                      value;
                                                },
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
                                          left: 16,
                                          top: 16,
                                          right: 16,
                                        ),
                                        decoration:
                                            AppDecoration.fillGray103.copyWith(
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
                                              child: CustomRadioButton(
                                                text: "msg_credit_debit".tr,
                                                iconSize: 18,
                                                value: "text",
                                                groupValue: controller
                                                    .radioGroup3.value,
                                                margin: getMargin(
                                                  left: 17,
                                                  top: 19,
                                                  right: 17,
                                                  bottom: 18,
                                                ),
                                                onChange: (value) {
                                                  controller.radioGroup3.value =
                                                      value;
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 16,
                                          top: 18,
                                          right: 16,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomIconButton(
                                              height: 14,
                                              width: 14,
                                              margin: getMargin(
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              shape:
                                                  IconButtonShape.CircleBorder7,
                                              padding:
                                                  IconButtonPadding.PaddingAll4,
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgPlus14X14,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 1,
                                              ),
                                              child: Text(
                                                "lbl_add_new_card".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold16
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
                                        height: getVerticalSize(
                                          42.00,
                                        ),
                                        width: getHorizontalSize(
                                          364.00,
                                        ),
                                        margin: getMargin(
                                          left: 16,
                                          top: 200,
                                          right: 16,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                margin: getMargin(
                                                  right: 4,
                                                ),
                                                decoration: AppDecoration
                                                    .fillGreen500
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          left: 23,
                                                          top: 13,
                                                          right: 23,
                                                          bottom: 12,
                                                        ),
                                                        child: Text(
                                                          "lbl_enter_cvv".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular16WhiteA700
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                height: getVerticalSize(
                                                  42.00,
                                                ),
                                                width: getHorizontalSize(
                                                  242.00,
                                                ),
                                                margin: getMargin(
                                                  left: 10,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgCardWhiteA700,
                                                        height: getVerticalSize(
                                                          42.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          242.00,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          left: 16,
                                                          top: 10,
                                                          right: 16,
                                                          bottom: 10,
                                                        ),
                                                        child: Text(
                                                          "lbl_e_g_123".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular16Gray402
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomButton(
                                      width: 200,
                                      text: "lbl_pay_9_97".tr,
                                      margin: getMargin(
                                        left: 16,
                                        top: 30,
                                        right: 16,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        376.00,
                                      ),
                                      margin: getMargin(
                                        left: 16,
                                        top: 21,
                                        right: 16,
                                        bottom: 20,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "msg_your_personal_d2".tr,
                                              style: TextStyle(
                                                color: ColorConstant.gray505,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "lbl_privacy_policy".tr,
                                              style: TextStyle(
                                                color: ColorConstant.green500,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "lbl".tr,
                                              style: TextStyle(
                                                color: ColorConstant.gray505,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 326,
                                  bottom: 326,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CommonImageView(
                                      imagePath: ImageConstant.imgImage151X250,
                                      height: getVerticalSize(
                                        151.00,
                                      ),
                                      width: getHorizontalSize(
                                        250.00,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 14,
                                        bottom: 1,
                                      ),
                                      child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgImage150X148,
                                        height: getVerticalSize(
                                          150.00,
                                        ),
                                        width: getHorizontalSize(
                                          148.00,
                                        ),
                                      ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
