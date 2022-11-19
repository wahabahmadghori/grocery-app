import 'controller/login_with_email_id_controller.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/core/utils/validation_functions.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/custom_text_form_field.dart';
import 'package:grocery_app/domain/googleauth/google_auth_helper.dart';
import 'package:grocery_app/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginWithEmailIdScreen extends GetWidget<LoginWithEmailIdController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 16, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgGroup400,
                                                height: getVerticalSize(53.00),
                                                width:
                                                    getHorizontalSize(36.00)),
                                            Container(
                                                margin: getMargin(
                                                    left: 11,
                                                    top: 17,
                                                    bottom: 7),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_sg".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              fontSize: getFontSize(
                                                                  28.78927230834961),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      TextSpan(
                                                          text: ' ',
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .lime500,
                                                              fontSize: getFontSize(
                                                                  28.78927230834961),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300)),
                                                      TextSpan(
                                                          text:
                                                              "lbl_grocery".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .green500,
                                                              fontSize: getFontSize(
                                                                  28.78927230834961),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))
                                                    ]),
                                                    textAlign: TextAlign.left))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(152.00),
                                      width: getHorizontalSize(157.00),
                                      margin: getMargin(
                                          left: 16, top: 50, right: 16),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(133.00),
                                                    width: getHorizontalSize(
                                                        157.00),
                                                    margin:
                                                        getMargin(bottom: 10),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgBackgroundcomp,
                                                                  height:
                                                                      getVerticalSize(
                                                                          133.00),
                                                                  width: getHorizontalSize(
                                                                      157.00))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 20,
                                                                      top: 1,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 47, bottom: 54),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgUser, height: getVerticalSize(21.00), width: getHorizontalSize(18.00))),
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(122.00),
                                                                            width: getHorizontalSize(73.00),
                                                                            margin: getMargin(left: 18),
                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                              Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(left: 10, bottom: 10), child: CommonImageView(svgPath: ImageConstant.imgLock, height: getVerticalSize(36.00), width: getHorizontalSize(30.00)))),
                                                                              Align(
                                                                                  alignment: Alignment.bottomLeft,
                                                                                  child: Container(
                                                                                      height: getVerticalSize(106.00),
                                                                                      width: getHorizontalSize(53.00),
                                                                                      margin: getMargin(top: 10, right: 10),
                                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                                        Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgVector, height: getVerticalSize(106.00), width: getHorizontalSize(53.00))),
                                                                                        Align(
                                                                                            alignment: Alignment.center,
                                                                                            child: Container(
                                                                                                height: getVerticalSize(99.00),
                                                                                                width: getHorizontalSize(48.00),
                                                                                                margin: getMargin(left: 2, top: 3, right: 2, bottom: 3),
                                                                                                child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                                  Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgMobile, height: getVerticalSize(99.00), width: getHorizontalSize(48.00))),
                                                                                                  Align(
                                                                                                      alignment: Alignment.bottomRight,
                                                                                                      child: Container(
                                                                                                          width: getHorizontalSize(38.00),
                                                                                                          margin: getMargin(left: 10, top: 10, right: 3, bottom: 3),
                                                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                            Align(
                                                                                                                alignment: Alignment.center,
                                                                                                                child: Container(
                                                                                                                    height: getVerticalSize(5.00),
                                                                                                                    width: getHorizontalSize(4.00),
                                                                                                                    margin: getMargin(left: 10, right: 10),
                                                                                                                    child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                                      Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgVectorGreen500, height: getVerticalSize(5.00), width: getHorizontalSize(4.00))),
                                                                                                                      Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgVectorBlack902, height: getVerticalSize(5.00), width: getHorizontalSize(4.00)))
                                                                                                                    ]))),
                                                                                                            Align(alignment: Alignment.center, child: Container(height: getVerticalSize(2.00), width: getHorizontalSize(17.00), margin: getMargin(left: 10, top: 1, right: 10), decoration: BoxDecoration(color: ColorConstant.whiteA7006c))),
                                                                                                            Container(height: getVerticalSize(1.00), width: getHorizontalSize(9.00), margin: getMargin(left: 1, top: 6, right: 10), decoration: BoxDecoration(color: ColorConstant.black90063)),
                                                                                                            Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 1, top: 2), child: CommonImageView(svgPath: ImageConstant.imgMenu, height: getVerticalSize(6.00), width: getHorizontalSize(37.00)))),
                                                                                                            Container(height: getVerticalSize(1.00), width: getHorizontalSize(17.00), margin: getMargin(left: 3, right: 10), decoration: BoxDecoration(color: ColorConstant.whiteA7006c)),
                                                                                                            Container(height: getVerticalSize(1.00), width: getHorizontalSize(9.00), margin: getMargin(left: 1, top: 7, right: 10), decoration: BoxDecoration(color: ColorConstant.black90063)),
                                                                                                            Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 1, top: 2, right: 1), child: CommonImageView(svgPath: ImageConstant.imgMenu6X37, height: getVerticalSize(6.00), width: getHorizontalSize(37.00)))),
                                                                                                            Container(height: getVerticalSize(1.00), width: getHorizontalSize(17.00), margin: getMargin(left: 2, right: 10), decoration: BoxDecoration(color: ColorConstant.whiteA7006c)),
                                                                                                            Container(height: getVerticalSize(1.00), width: getHorizontalSize(9.00), margin: getMargin(left: 1, top: 8, right: 10), decoration: BoxDecoration(color: ColorConstant.black90063)),
                                                                                                            Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 2, right: 1), child: CommonImageView(svgPath: ImageConstant.imgMenu1, height: getVerticalSize(6.00), width: getHorizontalSize(37.00)))),
                                                                                                            Container(
                                                                                                                height: getVerticalSize(1.00),
                                                                                                                width: getHorizontalSize(20.00),
                                                                                                                margin: getMargin(left: 2, right: 10),
                                                                                                                child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                                  Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(right: 10, bottom: 10), child: CommonImageView(svgPath: ImageConstant.imgVectorGreen5001X1, height: getSize(1.00), width: getSize(1.00)))),
                                                                                                                  Align(
                                                                                                                      alignment: Alignment.centerLeft,
                                                                                                                      child: Padding(
                                                                                                                          padding: getPadding(left: 2, top: 1, right: 10, bottom: 1),
                                                                                                                          child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                                                            CommonImageView(svgPath: ImageConstant.imgVector1X1, height: getSize(1.00), width: getSize(1.00)),
                                                                                                                            Padding(padding: getPadding(left: 1, top: 1, bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgVector1, height: getSize(1.00), width: getSize(1.00))),
                                                                                                                            Padding(padding: getPadding(left: 1, top: 1, bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgVector1, height: getSize(1.00), width: getSize(1.00))),
                                                                                                                            Padding(padding: getPadding(left: 1, top: 1, bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgVector1, height: getSize(1.00), width: getSize(1.00))),
                                                                                                                            Padding(padding: getPadding(left: 1, top: 1, bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgVectorGreen5001X1, height: getSize(1.00), width: getSize(1.00)))
                                                                                                                          ]))),
                                                                                                                  Align(alignment: Alignment.bottomRight, child: Padding(padding: getPadding(left: 10, top: 10, right: 4), child: CommonImageView(svgPath: ImageConstant.imgVector2, height: getSize(1.00), width: getSize(1.00)))),
                                                                                                                  Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 10, top: 1, right: 2, bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgVectorGreen5001X1, height: getSize(1.00), width: getSize(1.00)))),
                                                                                                                  Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 10, top: 1, bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgVectorGreen5001X1, height: getSize(1.00), width: getSize(1.00)))),
                                                                                                                  Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(1.00), width: getHorizontalSize(20.00)))
                                                                                                                ])),
                                                                                                            Container(
                                                                                                                height: getVerticalSize(16.00),
                                                                                                                width: getHorizontalSize(28.00),
                                                                                                                margin: getMargin(left: 3, top: 13, right: 10),
                                                                                                                child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                                  Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(bottom: 10), child: CommonImageView(svgPath: ImageConstant.imgTicket, height: getVerticalSize(8.00), width: getHorizontalSize(28.00)))),
                                                                                                                  Align(alignment: Alignment.centerLeft, child: Container(width: getHorizontalSize(12.00), margin: getMargin(left: 5, top: 1, right: 10), child: Text("lbl_log_in".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular698.copyWith())))
                                                                                                                ]))
                                                                                                          ])))
                                                                                                ])))
                                                                                      ])))
                                                                            ]))
                                                                      ])))
                                                        ]))),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(113.00),
                                                margin: getMargin(
                                                    left: 19,
                                                    top: 10,
                                                    right: 19),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray900)),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 30,
                                                        top: 10,
                                                        right: 30,
                                                        bottom: 1),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgCharacter,
                                                        height: getVerticalSize(
                                                            100.00),
                                                        width:
                                                            getHorizontalSize(
                                                                52.00))))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 44, right: 16),
                                  child: Text("lbl_login2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratSemiBold24
                                          .copyWith())),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 31, right: 16),
                                  child: Text("lbl_email_id".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium18
                                          .copyWith())),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller: controller.group6022Controller,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 16, top: 15, right: 16),
                                  variant: TextFormFieldVariant.OutlineGray500,
                                  padding: TextFormFieldPadding.PaddingTB20,
                                  fontStyle: TextFormFieldFontStyle
                                      .MontserratRegular16,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 25, right: 16),
                                  child: Text("lbl_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium18
                                          .copyWith())),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller: controller.group6023Controller,
                                  hintText: "msg_enter_your_pass".tr,
                                  margin:
                                      getMargin(left: 16, top: 15, right: 16),
                                  variant: TextFormFieldVariant.OutlineGray500,
                                  padding: TextFormFieldPadding.PaddingTB20,
                                  fontStyle: TextFormFieldFontStyle
                                      .MontserratRegular16,
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomButton(
                                  width: 396,
                                  text: "lbl_login2".tr,
                                  margin:
                                      getMargin(left: 16, top: 24, right: 16),
                                  variant: ButtonVariant.OutlineIndigoA20033,
                                  shape: ButtonShape.RoundedBorder10,
                                  fontStyle:
                                      ButtonFontStyle.MontserratSemiBold18,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 26, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(122.00),
                                                margin: getMargin(
                                                    top: 9, bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray400)),
                                            Padding(
                                                padding: getPadding(left: 8),
                                                child: Text(
                                                    "msg_or_continue_wit".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRegular16
                                                        .copyWith())),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(122.00),
                                                margin: getMargin(
                                                    left: 8, top: 9, bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray400))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 25, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapRowgoogle();
                                                },
                                                child: Container(
                                                    decoration: AppDecoration
                                                        .outlineGreen500
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 41,
                                                                      top: 11,
                                                                      bottom:
                                                                          11),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgGoogle,
                                                                  height:
                                                                      getSize(
                                                                          26.00),
                                                                  width: getSize(
                                                                      26.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 17,
                                                                      right: 38,
                                                                      bottom:
                                                                          14),
                                                              child: Text(
                                                                  "lbl_google"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratMedium18Gray700
                                                                      .copyWith()))
                                                        ]))),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapRowfacebook();
                                                },
                                                child: Container(
                                                    decoration: AppDecoration
                                                        .outlineGreen500
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 28,
                                                                      top: 9,
                                                                      bottom:
                                                                          9),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgFacebook,
                                                                  height:
                                                                      getVerticalSize(
                                                                          32.00),
                                                                  width: getHorizontalSize(
                                                                      33.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 8,
                                                                      top: 15,
                                                                      right: 33,
                                                                      bottom:
                                                                          16),
                                                              child: Text(
                                                                  "lbl_facebook"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratMedium18Gray700
                                                                      .copyWith()))
                                                        ])))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 33,
                                          right: 16,
                                          bottom: 20),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_don_t_you_have2".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray400,
                                                    fontSize: getFontSize(16),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "lbl_register".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.gray901,
                                                    fontSize: getFontSize(16),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight:
                                                        FontWeight.w700))
                                          ]),
                                          textAlign: TextAlign.left)))
                            ])))))));
  }

  onTapRowgoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapRowfacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
