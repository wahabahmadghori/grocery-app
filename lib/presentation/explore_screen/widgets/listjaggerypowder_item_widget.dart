import '../controller/explore_controller.dart';
import '../models/listjaggerypowder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListjaggerypowderItemWidget extends StatelessWidget {
  ListjaggerypowderItemWidget(this.listjaggerypowderItemModelObj);

  ListjaggerypowderItemModel listjaggerypowderItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          decoration: AppDecoration.fillGray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: getPadding(
                  left: 22,
                  top: 12,
                  right: 22,
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgImage69X69,
                  height: getSize(
                    69.00,
                  ),
                  width: getSize(
                    69.00,
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 7,
                  top: 7,
                  right: 6,
                  bottom: 6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_jaggery_powder".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratMedium12.copyWith(),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 1,
                          top: 7,
                          right: 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_500_g".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratRegular12
                                        .copyWith(),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                      right: 10,
                                    ),
                                    child: Text(
                                      "lbl_3".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold12Black905
                                          .copyWith(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomIconButton(
                              height: 24,
                              width: 24,
                              margin: getMargin(
                                top: 1,
                                bottom: 6,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgPlus,
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
