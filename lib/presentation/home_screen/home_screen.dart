import '../home_screen/widgets/listbackground_item_widget.dart';
import '../home_screen/widgets/listfortunerice_item_widget.dart';
import '../home_screen/widgets/listlanguage_item_widget.dart';
import '../home_screen/widgets/listsoftdrinks_item_widget.dart';
import '../home_screen/widgets/slidereverydayessent_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/listbackground_item_model.dart';
import 'models/listfortunerice_item_model.dart';
import 'models/listlanguage_item_model.dart';
import 'models/listsoftdrinks_item_model.dart';
import 'models/slidereverydayessent_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: getMargin(
                  top: 10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: size.width,
                        margin: getMargin(
                          left: 16,
                          right: 16,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            52.00,
                          ),
                          width: getHorizontalSize(
                            396.00,
                          ),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      6.00,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgCard,
                                    height: getVerticalSize(
                                      52.00,
                                    ),
                                    width: getHorizontalSize(
                                      396.00,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 14,
                                    right: 24,
                                    bottom: 14,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgSearch,
                                        height: getSize(
                                          20.00,
                                        ),
                                        width: getSize(
                                          20.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 14,
                                          top: 5,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "msg_search_products".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtMontserratRegular14
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
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          padding: getPadding(
                            left: 16,
                            top: 20,
                          ),
                          child: Container(
                            margin: getMargin(
                              bottom: 196,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    right: 16,
                                  ),
                                  child: Obx(
                                    () => CarouselSlider.builder(
                                      options: CarouselOptions(
                                        height: getVerticalSize(
                                          154.00,
                                        ),
                                        initialPage: 0,
                                        autoPlay: true,
                                        viewportFraction: 1.0,
                                        enableInfiniteScroll: false,
                                        scrollDirection: Axis.horizontal,
                                        onPageChanged: (index, reason) {
                                          controller.silderIndex.value = index;
                                        },
                                      ),
                                      itemCount: controller.homeModelObj.value
                                          .slidereverydayessentItemList.length,
                                      itemBuilder: (context, index, realIndex) {
                                        SlidereverydayessentItemModel model =
                                            controller.homeModelObj.value
                                                    .slidereverydayessentItemList[
                                                index];
                                        return SlidereverydayessentItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Obx(
                                    () => Container(
                                      height: getVerticalSize(
                                        5.00,
                                      ),
                                      margin: getMargin(
                                        left: 179,
                                        top: 24,
                                        right: 179,
                                      ),
                                      child: AnimatedSmoothIndicator(
                                        activeIndex:
                                            controller.silderIndex.value,
                                        count: controller
                                            .homeModelObj
                                            .value
                                            .slidereverydayessentItemList
                                            .length,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                          spacing: 2,
                                          activeDotColor:
                                              ColorConstant.green500,
                                          dotColor: ColorConstant.bluegray100,
                                          dotHeight: getVerticalSize(
                                            5.00,
                                          ),
                                          dotWidth: getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 27,
                                      right: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "lbl_top_categories".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratBold20Gray800
                                              .copyWith(),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            "lbl_explore_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold16
                                                .copyWith(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      145.00,
                                    ),
                                    width: getHorizontalSize(
                                      408.00,
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        padding: getPadding(
                                          top: 20,
                                          right: 4,
                                        ),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller.homeModelObj.value
                                            .listbackgroundItemList.length,
                                        itemBuilder: (context, index) {
                                          ListbackgroundItemModel model =
                                              controller.homeModelObj.value
                                                      .listbackgroundItemList[
                                                  index];
                                          return ListbackgroundItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 25,
                                      right: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "lbl_top_products".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratBold20Gray800
                                              .copyWith(),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 1,
                                            bottom: 2,
                                          ),
                                          child: Text(
                                            "lbl_explore_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold16
                                                .copyWith(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      210.00,
                                    ),
                                    width: getHorizontalSize(
                                      520.00,
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        padding: getPadding(
                                          top: 18,
                                        ),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller.homeModelObj.value
                                            .listfortunericeItemList.length,
                                        itemBuilder: (context, index) {
                                          ListfortunericeItemModel model =
                                              controller.homeModelObj.value
                                                      .listfortunericeItemList[
                                                  index];
                                          return ListfortunericeItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      191.00,
                                    ),
                                    width: getHorizontalSize(
                                      396.00,
                                    ),
                                    margin: getMargin(
                                      top: 21,
                                      right: 16,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            decoration: AppDecoration
                                                .fillLightblue50
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      80.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      161.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 24,
                                                      top: 111,
                                                      right: 24,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          ColorConstant.cyan50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          80.50,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 10,
                                              bottom: 7,
                                            ),
                                            child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgImage130X158,
                                              height: getVerticalSize(
                                                130.00,
                                              ),
                                              width: getHorizontalSize(
                                                158.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            margin: getMargin(
                                              left: 24,
                                              top: 27,
                                              right: 24,
                                              bottom: 27,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "msg_get_25_cashbac".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratBold24
                                                      .copyWith(),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 14,
                                                    right: 10,
                                                  ),
                                                  child: Text(
                                                    "msg_on_all_baby_pro".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRegular14Teal401
                                                        .copyWith(),
                                                  ),
                                                ),
                                                CustomButton(
                                                  width: 129,
                                                  text: "lbl_shop_now".tr,
                                                  margin: getMargin(
                                                    top: 48,
                                                    right: 10,
                                                  ),
                                                  padding:
                                                      ButtonPadding.PaddingAll8,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 25,
                                      right: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            "msg_deals_of_the_we".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratBold20Gray800
                                                .copyWith(),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "lbl_explore_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold16
                                                .copyWith(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      187.00,
                                    ),
                                    width: getHorizontalSize(
                                      497.00,
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        padding: getPadding(
                                          top: 22,
                                        ),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller.homeModelObj.value
                                            .listsoftdrinksItemList.length,
                                        itemBuilder: (context, index) {
                                          ListsoftdrinksItemModel model =
                                              controller.homeModelObj.value
                                                      .listsoftdrinksItemList[
                                                  index];
                                          return ListsoftdrinksItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 20,
                                      right: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            "lbl_featured_items".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratBold20Gray800
                                                .copyWith(),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "lbl_explore_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold16
                                                .copyWith(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      208.00,
                                    ),
                                    width: getHorizontalSize(
                                      500.00,
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        padding: getPadding(
                                          top: 17,
                                        ),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller.homeModelObj.value
                                            .listlanguageItemList.length,
                                        itemBuilder: (context, index) {
                                          ListlanguageItemModel model =
                                              controller.homeModelObj.value
                                                  .listlanguageItemList[index];
                                          return ListlanguageItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
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
