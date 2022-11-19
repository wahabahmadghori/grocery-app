import '../controller/about_us_controller.dart';
import '../models/about_us_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class AboutUsItemWidget extends StatelessWidget {
  AboutUsItemWidget(this.aboutUsItemModelObj);

  AboutUsItemModel aboutUsItemModelObj;

  var controller = Get.find<AboutUsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: getPadding(
          top: 6.0,
          right: 25,
          bottom: 6.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonImageView(
                  svgPath: ImageConstant.imgQrcode,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 7,
                    bottom: 2,
                  ),
                  child: Text(
                    "msg_100_organic_f".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold14Gray801.copyWith(),
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                left: 71,
                top: 7,
                bottom: 2,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgMusic14X24,
                      height: getVerticalSize(
                        14.00,
                      ),
                      width: getHorizontalSize(
                        24.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 1,
                    ),
                    child: Text(
                      "lbl_fast_delivery".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold14Gray801.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
