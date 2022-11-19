import '../controller/home_controller.dart';
import '../models/listfortunerice_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class ListfortunericeItemWidget extends StatelessWidget {
  ListfortunericeItemWidget(this.listfortunericeItemModelObj);

  ListfortunericeItemModel listfortunericeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(
            192.00,
          ),
          width: getHorizontalSize(
            162.00,
          ),
          margin: getMargin(
            right: 16.940002,
          ),
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: ColorConstant.gray100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: getMargin(
                      left: 13,
                      top: 18,
                      right: 13,
                      bottom: 18,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              right: 13,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgImage92X86,
                              height: getVerticalSize(
                                92.00,
                              ),
                              width: getHorizontalSize(
                                86.00,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 10,
                              right: 17,
                            ),
                            child: Text(
                              "lbl_fortune_rice".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium16.copyWith(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 9,
                              right: 72,
                              bottom: 3,
                            ),
                            child: Text(
                              "lbl_3_kg".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMicrosoftNewTaiLueBold16
                                  .copyWith(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: getVerticalSize(
                      41.00,
                    ),
                    width: getHorizontalSize(
                      58.00,
                    ),
                    margin: getMargin(
                      top: 11,
                      right: 10,
                      bottom: 11,
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgMenu41X58,
                            height: getVerticalSize(
                              41.00,
                            ),
                            width: getHorizontalSize(
                              58.00,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: getMargin(
                              left: 7,
                              top: 5,
                              right: 10,
                              bottom: 5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_37".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold14
                                      .copyWith(),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    right: 8,
                                  ),
                                  child: Text(
                                    "lbl_off".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratSemiBold14
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
