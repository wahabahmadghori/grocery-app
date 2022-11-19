import '../controller/explore_controller.dart';
import '../models/listplus_twelve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListplusTwelveItemWidget extends StatelessWidget {
  ListplusTwelveItemWidget(this.listplusTwelveItemModelObj);

  ListplusTwelveItemModel listplusTwelveItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
            bottom: 3,
          ),
          decoration: AppDecoration.fillGray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 31,
                    top: 16,
                    right: 31,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgImage57X46,
                    height: getVerticalSize(
                      57.00,
                    ),
                    width: getHorizontalSize(
                      46.00,
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  52.00,
                ),
                width: getHorizontalSize(
                  98.00,
                ),
                margin: getMargin(
                  left: 8,
                  top: 13,
                  right: 8,
                  bottom: 6,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomIconButton(
                      height: 24,
                      width: 24,
                      margin: getMargin(
                        left: 10,
                        top: 10,
                        bottom: 6,
                      ),
                      alignment: Alignment.bottomRight,
                      child: CommonImageView(
                        svgPath: ImageConstant.imgPlus,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: getMargin(
                          right: 10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_a2mate_milk".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium12.copyWith(),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 1,
                                top: 6,
                                right: 10,
                              ),
                              child: Text(
                                "lbl_0_5_ltr".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtMontserratRegular12.copyWith(),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 1,
                                top: 3,
                                right: 10,
                              ),
                              child: Text(
                                "lbl_2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratSemiBold12Black905
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
            ],
          ),
        ),
      ),
    );
  }
}
