import '../controller/fruits_controller.dart';
import '../models/fruits_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class FruitsItemWidget extends StatelessWidget {
  FruitsItemWidget(this.fruitsItemModelObj);

  FruitsItemModel fruitsItemModelObj;

  var controller = Get.find<FruitsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 48,
              top: 13,
              right: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 23,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgImage17,
                    height: getVerticalSize(
                      78.00,
                    ),
                    width: getHorizontalSize(
                      94.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 14,
                    bottom: 77,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgFavorite1,
                    height: getVerticalSize(
                      23.00,
                    ),
                    width: getHorizontalSize(
                      25.00,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: getPadding(
                left: 8,
                top: 10,
                right: 32,
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
                    child: Text(
                      "lbl_kiwifruit".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratBold18.copyWith(),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 5,
                    ),
                    child: Text(
                      "lbl_3_units".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold14Gray702.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 8,
                top: 10,
                right: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "lbl_4".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold18Green500.copyWith(),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 2,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgVolume,
                            height: getSize(
                              18.00,
                            ),
                            width: getSize(
                              18.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 7,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_12".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold18.copyWith(),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 7,
                            top: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgPlus18X18,
                            height: getSize(
                              18.00,
                            ),
                            width: getSize(
                              18.00,
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
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 8,
                top: 14,
                right: 8,
                bottom: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomTextFormField(
                    width: 82,
                    focusNode: FocusNode(),
                    controller: controller.group2989OneController,
                    hintText: "lbl_subscribe".tr,
                    variant: TextFormFieldVariant.FillGreen500,
                    shape: TextFormFieldShape.RoundedBorder3,
                    padding: TextFormFieldPadding.PaddingTB7,
                    fontStyle: TextFormFieldFontStyle.MontserratSemiBold12,
                  ),
                  Container(
                    padding: getPadding(
                      left: 9,
                      top: 9,
                      right: 8,
                      bottom: 6,
                    ),
                    decoration: AppDecoration.txtOutlineGreen500.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder3,
                    ),
                    child: Text(
                      "lbl_buy_once".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtMontserratSemiBold12Green500.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
