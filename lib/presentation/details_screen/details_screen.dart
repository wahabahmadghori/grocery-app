import '../details_screen/widgets/listbackground_one_item_widget.dart';
import 'controller/details_controller.dart';
import 'models/listbackground_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_button.dart';

class DetailsScreen extends GetWidget<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                bottom: 31,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        262.00,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: getVerticalSize(
                                185.00,
                              ),
                              width: size.width,
                              margin: getMargin(
                                bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.green500,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                    getHorizontalSize(
                                      30.00,
                                    ),
                                  ),
                                  bottomRight: Radius.circular(
                                    getHorizontalSize(
                                      30.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: getPadding(
                                left: 94,
                                top: 10,
                                right: 94,
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgImage219X240,
                                height: getVerticalSize(
                                  219.00,
                                ),
                                width: getHorizontalSize(
                                  240.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: size.width,
                              margin: getMargin(
                                left: 16,
                                top: 22,
                                right: 16,
                                bottom: 22,
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
                                      top: 1,
                                      bottom: 2,
                                    ),
                                    child: Text(
                                      "lbl_details".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold22WhiteA700
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
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 16,
                      top: 24,
                      right: 15,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 82,
                              right: 82,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgSwipe,
                              height: getVerticalSize(
                                5.00,
                              ),
                              width: getHorizontalSize(
                                33.00,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 26,
                              right: 1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 4,
                                  ),
                                  child: Text(
                                    "lbl_green_apple".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMontserratBold28.copyWith(),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 2,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgVolume,
                                        height: getSize(
                                          30.00,
                                        ),
                                        width: getSize(
                                          30.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 15,
                                          top: 2,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "lbl_12".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold24
                                              .copyWith(),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 18,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgPlus18X18,
                                          height: getSize(
                                            30.00,
                                          ),
                                          width: getSize(
                                            30.00,
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
                        Padding(
                          padding: getPadding(
                            top: 20,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_special_price".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular22.copyWith(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 18,
                              right: 1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtHelveticaBold34.copyWith(),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 11,
                                  ),
                                  child: Text(
                                    "lbl_42_off".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratSemiBold22
                                        .copyWith(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 29,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_description".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold22.copyWith(),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            375.00,
                          ),
                          margin: getMargin(
                            top: 15,
                            right: 10,
                          ),
                          child: Text(
                            "msg_green_apples_ha".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular16Gray503
                                .copyWith(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 82,
                              top: 48,
                              right: 82,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomButton(
                                  width: 106,
                                  text: "lbl_subscribe".tr,
                                  padding: ButtonPadding.PaddingAll8,
                                ),
                                CustomButton(
                                  width: 106,
                                  text: "lbl_buy_once".tr,
                                  margin: getMargin(
                                    left: 21,
                                  ),
                                  variant: ButtonVariant.OutlineGreen500,
                                  padding: ButtonPadding.PaddingAll11,
                                  fontStyle: ButtonFontStyle
                                      .MontserratSemiBold16Green500,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 25,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_related_items".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold22.copyWith(),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            189.00,
                          ),
                          width: getHorizontalSize(
                            397.00,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              padding: getPadding(
                                top: 27,
                              ),
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.detailsModelObj.value
                                  .listbackgroundOneItemList.length,
                              itemBuilder: (context, index) {
                                ListbackgroundOneItemModel model = controller
                                    .detailsModelObj
                                    .value
                                    .listbackgroundOneItemList[index];
                                return ListbackgroundOneItemWidget(
                                  model,
                                );
                              },
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
    );
  }
}