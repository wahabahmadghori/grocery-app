import '../controller/home_controller.dart';
import '../models/listbackground_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class ListbackgroundItemWidget extends StatelessWidget {
  ListbackgroundItemWidget(this.listbackgroundItemModelObj);

  ListbackgroundItemModel listbackgroundItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: getVerticalSize(
            125.00,
          ),
          width: getHorizontalSize(
            87.00,
          ),
          margin: getMargin(
            right: 20,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: getVerticalSize(
                    88.00,
                  ),
                  width: getHorizontalSize(
                    87.00,
                  ),
                  margin: getMargin(
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray100,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16.00,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 6,
                          right: 6,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImage65X75,
                          height: getVerticalSize(
                            65.00,
                          ),
                          width: getHorizontalSize(
                            75.00,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: getMargin(
                            top: 22,
                          ),
                          padding: getPadding(
                            left: 14,
                            top: 11,
                            bottom: 11,
                          ),
                          decoration: AppDecoration.txtFillGreen500.copyWith(
                            borderRadius: BorderRadiusStyle.txtCustomBorderBL5,
                          ),
                          child: Text(
                            "lbl_groecries".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold12.copyWith(),
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
    );
  }
}
