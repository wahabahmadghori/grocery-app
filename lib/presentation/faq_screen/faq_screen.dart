import 'controller/faq_controller.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/custom_drop_down.dart';

class FaqScreen extends GetWidget<FaqController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.green500,
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: getMargin(
                  top: 20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: size.width,
                        margin: getMargin(
                          left: 16,
                          right: 16,
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
                              child: CommonImageView(
                                svgPath: ImageConstant.imgForward26X13,
                                height: getVerticalSize(
                                  26.00,
                                ),
                                width: getHorizontalSize(
                                  13.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 5,
                              ),
                              child: Text(
                                "lbl_faq".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratBold22WhiteA700
                                    .copyWith(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SingleChildScrollView(
                          padding: getPadding(
                            top: 23,
                          ),
                          child: Container(
                            margin: getMargin(
                              bottom: 3,
                            ),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomDropDown(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                    margin: getMargin(
                                      left: 30,
                                      right: 30,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant
                                          .imgArrowdownBlack9056X13,
                                    ),
                                  ),
                                  hintText: "lbl_select_category".tr,
                                  margin: getMargin(
                                    left: 16,
                                    top: 24,
                                    right: 16,
                                  ),
                                  variant: DropDownVariant.FillGray102,
                                  fontStyle:
                                      DropDownFontStyle.MontserratRegular18,
                                  alignment: Alignment.center,
                                  items: controller
                                      .faqModelObj.value.dropdownItemList,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  },
                                ),
                                CustomDropDown(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                    margin: getMargin(
                                      left: 30,
                                      right: 30,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant
                                          .imgArrowdownBlack9056X13,
                                    ),
                                  ),
                                  hintText: "msg_where_do_you_de".tr,
                                  margin: getMargin(
                                    left: 16,
                                    top: 24,
                                    right: 16,
                                  ),
                                  alignment: Alignment.center,
                                  items: controller
                                      .faqModelObj.value.dropdownItemList1,
                                  onChanged: (value) {
                                    controller.onSelected1(value);
                                  },
                                ),
                                CustomDropDown(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                    margin: getMargin(
                                      left: 30,
                                      right: 30,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant
                                          .imgArrowdownBlack9056X13,
                                    ),
                                  ),
                                  hintText: "msg_how_can_i_order".tr,
                                  margin: getMargin(
                                    left: 16,
                                    top: 16,
                                    right: 16,
                                  ),
                                  alignment: Alignment.center,
                                  items: controller
                                      .faqModelObj.value.dropdownItemList2,
                                  onChanged: (value) {
                                    controller.onSelected2(value);
                                  },
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: getHorizontalSize(
                                      386.00,
                                    ),
                                    margin: getMargin(
                                      left: 16,
                                      top: 24,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "msg_placing_an_orde".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRegular14Gray902
                                          .copyWith(),
                                    ),
                                  ),
                                ),
                                CustomDropDown(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                    margin: getMargin(
                                      left: 30,
                                      right: 23,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant
                                          .imgArrowdownBlack9056X13,
                                    ),
                                  ),
                                  hintText: "msg_how_do_i_know_a".tr,
                                  margin: getMargin(
                                    left: 16,
                                    top: 22,
                                    right: 16,
                                  ),
                                  padding: DropDownPadding.PaddingT18,
                                  alignment: Alignment.center,
                                  items: controller
                                      .faqModelObj.value.dropdownItemList3,
                                  onChanged: (value) {
                                    controller.onSelected3(value);
                                  },
                                ),
                                CustomDropDown(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                    margin: getMargin(
                                      left: 30,
                                      right: 23,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant
                                          .imgArrowdownBlack9056X13,
                                    ),
                                  ),
                                  hintText: "msg_what_is_minimum".tr,
                                  margin: getMargin(
                                    left: 16,
                                    top: 16,
                                    right: 16,
                                  ),
                                  padding: DropDownPadding.PaddingTB21,
                                  alignment: Alignment.center,
                                  items: controller
                                      .faqModelObj.value.dropdownItemList4,
                                  onChanged: (value) {
                                    controller.onSelected4(value);
                                  },
                                ),
                                CustomDropDown(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                    margin: getMargin(
                                      left: 30,
                                      right: 23,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant
                                          .imgArrowdownBlack9056X13,
                                    ),
                                  ),
                                  hintText: "msg_what_if_i_want".tr,
                                  margin: getMargin(
                                    left: 16,
                                    top: 16,
                                    right: 16,
                                  ),
                                  alignment: Alignment.center,
                                  items: controller
                                      .faqModelObj.value.dropdownItemList5,
                                  onChanged: (value) {
                                    controller.onSelected5(value);
                                  },
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 24,
                                    right: 16,
                                  ),
                                  child: Text(
                                    "msg_not_listed_your".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratSemiBold20Black905
                                        .copyWith(),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: double.infinity,
                                    margin: getMargin(
                                      left: 16,
                                      top: 16,
                                      right: 16,
                                    ),
                                    decoration:
                                        AppDecoration.fillGray102.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 13,
                                              top: 15,
                                              right: 13,
                                              bottom: 88,
                                            ),
                                            child: Text(
                                              "msg_write_your_ques".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRegular14Bluegray402
                                                  .copyWith(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomButton(
                                  width: 208,
                                  text: "lbl_submit".tr,
                                  margin: getMargin(
                                    left: 16,
                                    top: 30,
                                    right: 16,
                                    bottom: 20,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.green500,
              ),
              child: Padding(
                padding: getPadding(
                  top: 23,
                  bottom: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgCar,
                        height: getSize(
                          21.00,
                        ),
                        width: getSize(
                          21.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgIcon,
                        height: getVerticalSize(
                          23.00,
                        ),
                        width: getHorizontalSize(
                          24.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgClock,
                        height: getVerticalSize(
                          23.00,
                        ),
                        width: getHorizontalSize(
                          21.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgClock20X24,
                        height: getVerticalSize(
                          20.00,
                        ),
                        width: getHorizontalSize(
                          24.00,
                        ),
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgUser24X18,
                      height: getVerticalSize(
                        24.00,
                      ),
                      width: getHorizontalSize(
                        18.00,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
