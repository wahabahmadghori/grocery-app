import '../controller/home_controller.dart';
import '../models/listsoftdrinks_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class ListsoftdrinksItemWidget extends StatelessWidget {
  ListsoftdrinksItemWidget(this.listsoftdrinksItemModelObj);

  ListsoftdrinksItemModel listsoftdrinksItemModelObj;

  var controller = Get.find<HomeController>();

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 31,
                  top: 14,
                  right: 31,
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgImage81X92,
                  height: getVerticalSize(
                    81.00,
                  ),
                  width: getHorizontalSize(
                    92.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 31,
                  top: 12,
                  right: 31,
                ),
                child: Text(
                  "lbl_soft_drinks".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratSemiBold16Gray800.copyWith(),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 31,
                  top: 12,
                  right: 31,
                  bottom: 14,
                ),
                child: Text(
                  "lbl_upto_40_off".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratBold12.copyWith(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
