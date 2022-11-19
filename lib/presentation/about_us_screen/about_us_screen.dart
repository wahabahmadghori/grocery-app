import '../about_us_screen/widgets/about_us_item_widget.dart';
import 'controller/about_us_controller.dart';
import 'models/about_us_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

class AboutUsScreen extends GetWidget<AboutUsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.green500,
        body: Column(
          children: [
            Expanded(
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
                                left: 15,
                                top: 1,
                                bottom: 2,
                              ),
                              child: Text(
                                "lbl_about".tr,
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
                              borderRadius: BorderRadiusStyle.customBorderTL30,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 29,
                                      right: 16,
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgImage177X396,
                                      height: getVerticalSize(
                                        177.00,
                                      ),
                                      width: getHorizontalSize(
                                        396.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: getHorizontalSize(
                                      384.00,
                                    ),
                                    margin: getMargin(
                                      left: 16,
                                      top: 25,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "msg_what_began_litt".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRegular14Gray703
                                          .copyWith(),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    619.00,
                                  ),
                                  width: size.width,
                                  margin: getMargin(
                                    top: 94,
                                    bottom: 127,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          height: getVerticalSize(
                                            496.00,
                                          ),
                                          width: size.width,
                                          margin: getMargin(
                                            bottom: 10,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    453.00,
                                                  ),
                                                  width: size.width,
                                                  margin: getMargin(
                                                    top: 10,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant.red50,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  margin: getMargin(
                                                    left: 16,
                                                    right: 16,
                                                    bottom: 10,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 57,
                                                          right: 57,
                                                        ),
                                                        child: CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgImage172X198,
                                                          height:
                                                              getVerticalSize(
                                                            172.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            198.00,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 57,
                                                          top: 4,
                                                          right: 57,
                                                        ),
                                                        child: Text(
                                                          "msg_why_choose_us"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold22
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          273.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 57,
                                                          top: 19,
                                                          right: 57,
                                                        ),
                                                        child: Text(
                                                          "msg_we_do_not_buy_f"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold18Gray801
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          389.00,
                                                        ),
                                                        margin: getMargin(
                                                          top: 30,
                                                          right: 6,
                                                        ),
                                                        child: Text(
                                                          "msg_we_would_like_t"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular14Gray605
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            top: 22,
                                                          ),
                                                          child: Obx(
                                                            () => ListView
                                                                .builder(
                                                              physics:
                                                                  NeverScrollableScrollPhysics(),
                                                              shrinkWrap: true,
                                                              itemCount: controller
                                                                  .aboutUsModelObj
                                                                  .value
                                                                  .aboutUsItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                AboutUsItemModel
                                                                    model =
                                                                    controller
                                                                        .aboutUsModelObj
                                                                        .value
                                                                        .aboutUsItemList[index];
                                                                return AboutUsItemWidget(
                                                                  model,
                                                                );
                                                              },
                                                            ),
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
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: getMargin(
                                            left: 16,
                                            top: 10,
                                            right: 16,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                decoration: AppDecoration
                                                    .fillGray103
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 19,
                                                        top: 23,
                                                        bottom: 17,
                                                      ),
                                                      child: Text(
                                                        "lbl_privacy_policy2"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratRegular16Gray606
                                                            .copyWith(),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 21,
                                                        right: 28,
                                                        bottom: 21,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getVerticalSize(
                                                          13.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          6.00,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  top: 16,
                                                ),
                                                decoration: AppDecoration
                                                    .fillGray103
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 19,
                                                        top: 21,
                                                        bottom: 19,
                                                      ),
                                                      child: Text(
                                                        "msg_terms_and_servi"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratRegular16Gray606
                                                            .copyWith(),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 21,
                                                        right: 28,
                                                        bottom: 21,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getVerticalSize(
                                                          13.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          6.00,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
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
