import '../controller/home_controller.dart';
import '../models/slidereverydayessent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class SlidereverydayessentItemWidget extends StatelessWidget {
  SlidereverydayessentItemWidget(this.slidereverydayessentItemModelObj);

  SlidereverydayessentItemModel slidereverydayessentItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.fillGreen500.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: getMargin(
                left: 35,
                top: 40,
                bottom: 40,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      99.00,
                    ),
                    child: Text(
                      "msg_everyday_essent".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtMontserratRegular20WhiteA700.copyWith(),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 14,
                      right: 10,
                    ),
                    child: Text(
                      "lbl_10_off".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratBold20.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 35,
                top: 10,
                right: 28,
                bottom: 18,
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgImage,
                height: getVerticalSize(
                  126.00,
                ),
                width: getHorizontalSize(
                  199.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
