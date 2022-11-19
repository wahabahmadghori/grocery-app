import '../controller/my_subscription_controller.dart';
import '../models/listcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class ListcardItemWidget extends StatelessWidget {
  ListcardItemWidget(this.listcardItemModelObj);

  ListcardItemModel listcardItemModelObj;

  var controller = Get.find<MySubscriptionController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          119.00,
        ),
        width: getHorizontalSize(
          400.00,
        ),
        margin: getMargin(
          top: 7.5,
          bottom: 7.5,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  right: 4,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgCard,
                  height: getVerticalSize(
                    119.00,
                  ),
                  width: getHorizontalSize(
                    396.00,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: getVerticalSize(
                  107.00,
                ),
                width: getHorizontalSize(
                  377.00,
                ),
                margin: getMargin(
                  left: 10,
                  top: 10,
                  bottom: 1,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: getVerticalSize(
                          43.00,
                        ),
                        width: getHorizontalSize(
                          159.00,
                        ),
                        margin: getMargin(
                          left: 10,
                          top: 10,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                svgPath: ImageConstant.imgCardGreen500,
                                height: getVerticalSize(
                                  43.00,
                                ),
                                width: getHorizontalSize(
                                  159.00,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 17,
                                  top: 10,
                                  right: 17,
                                  bottom: 8,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      margin: getMargin(
                                        top: 3,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_m".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratBold14WhiteA700
                                                .copyWith(),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 5,
                                              top: 1,
                                              right: 10,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgRound,
                                              height: getSize(
                                                3.00,
                                              ),
                                              width: getSize(
                                                3.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 8,
                                        top: 3,
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
                                            child: Text(
                                              "lbl_t".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratBold14WhiteA700
                                                  .copyWith(),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 3,
                                              top: 1,
                                              right: 2,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgRound,
                                              height: getSize(
                                                3.00,
                                              ),
                                              width: getSize(
                                                3.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 8,
                                        top: 3,
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
                                            child: Text(
                                              "lbl_w".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratBold14WhiteA700
                                                  .copyWith(),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 7,
                                              top: 1,
                                              right: 6,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgRound,
                                              height: getSize(
                                                3.00,
                                              ),
                                              width: getSize(
                                                3.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 8,
                                        top: 3,
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
                                            child: Text(
                                              "lbl_t".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratBold14WhiteA700
                                                  .copyWith(),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 3,
                                              top: 1,
                                              right: 2,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgRound,
                                              height: getSize(
                                                3.00,
                                              ),
                                              width: getSize(
                                                3.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 8,
                                        top: 3,
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
                                            child: Text(
                                              "lbl_f".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratBold14WhiteA700
                                                  .copyWith(),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 3,
                                              top: 1,
                                              right: 2,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgRound,
                                              height: getSize(
                                                3.00,
                                              ),
                                              width: getSize(
                                                3.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 8,
                                        top: 3,
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
                                            child: Text(
                                              "lbl_s".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratBold14WhiteA700
                                                  .copyWith(),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 3,
                                              top: 1,
                                              right: 2,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgRound,
                                              height: getSize(
                                                3.00,
                                              ),
                                              width: getSize(
                                                3.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                        top: 3,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "lbl_s".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratBold14WhiteA700
                                            .copyWith(),
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
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: getPadding(
                          top: 3,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: getSize(
                                    89.00,
                                  ),
                                  width: getSize(
                                    89.00,
                                  ),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.gray50,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          10.00,
                                        ),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 12,
                                              top: 13,
                                              right: 12,
                                              bottom: 13,
                                            ),
                                            child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgImage63X65,
                                              height: getVerticalSize(
                                                63.00,
                                              ),
                                              width: getHorizontalSize(
                                                65.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 22,
                                    top: 1,
                                    bottom: 14,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_amul_gold_milk".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold16Gray700c6
                                            .copyWith(),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 1,
                                          top: 13,
                                          right: 10,
                                        ),
                                        child: Text(
                                          "lbl_500_ml".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRegular14Gray503
                                              .copyWith(),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 1,
                                          top: 10,
                                          right: 10,
                                        ),
                                        child: Text(
                                          "lbl_2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtHelveticaBold18
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: getPadding(
                                left: 74,
                                top: 1,
                                bottom: 74,
                              ),
                              child: Text(
                                "lbl_qty_2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratSemiBold14Gray503
                                    .copyWith(),
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
          ],
        ),
      ),
    );
  }
}
