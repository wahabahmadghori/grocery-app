import '../controller/details_controller.dart';
import '../models/listbackground_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class ListbackgroundOneItemWidget extends StatelessWidget {
  ListbackgroundOneItemWidget(this.listbackgroundOneItemModelObj);

  ListbackgroundOneItemModel listbackgroundOneItemModelObj;

  var controller = Get.find<DetailsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 16,
          bottom: 1,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                115.00,
              ),
              width: getHorizontalSize(
                122.00,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgBackground,
                      height: getVerticalSize(
                        115.00,
                      ),
                      width: getHorizontalSize(
                        122.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: getVerticalSize(
                        100.00,
                      ),
                      width: getHorizontalSize(
                        103.00,
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
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                top: 10,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgAirplane,
                                height: getSize(
                                  20.00,
                                ),
                                width: getSize(
                                  20.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: getPadding(
                                right: 10,
                                bottom: 10,
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgImage85X84,
                                height: getVerticalSize(
                                  85.00,
                                ),
                                width: getHorizontalSize(
                                  84.00,
                                ),
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
            Container(
              height: getVerticalSize(
                47.00,
              ),
              width: getHorizontalSize(
                122.00,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgCardOrangeA200,
                      height: getVerticalSize(
                        47.00,
                      ),
                      width: getHorizontalSize(
                        122.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: getPadding(
                        left: 23,
                        top: 13,
                        right: 23,
                        bottom: 13,
                      ),
                      child: Text(
                        "lbl_pinapple".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratBold16WhiteA700.copyWith(),
                      ),
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
