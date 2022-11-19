import '../controller/explore_controller.dart';
import '../models/listtomato_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListtomatoItemWidget extends StatelessWidget {
  ListtomatoItemWidget(this.listtomatoItemModelObj);

  ListtomatoItemModel listtomatoItemModelObj;

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
                  left: 19,
                  top: 16,
                  right: 19,
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgImage55X76,
                  height: getVerticalSize(
                    55.00,
                  ),
                  width: getHorizontalSize(
                    76.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 8,
                  top: 13,
                  right: 8,
                  bottom: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: getMargin(
                        top: 3,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_tomato".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium12.copyWith(),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 6,
                              right: 10,
                            ),
                            child: Text(
                              "lbl_1_kg".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular12.copyWith(),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
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
                    CustomIconButton(
                      height: 23,
                      width: 24,
                      margin: getMargin(
                        top: 22,
                        bottom: 5,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgPlus,
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
