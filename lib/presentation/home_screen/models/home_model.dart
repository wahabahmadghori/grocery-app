import 'package:get/get.dart';
import 'slidereverydayessent_item_model.dart';
import 'listbackground_item_model.dart';
import 'listfortunerice_item_model.dart';
import 'listsoftdrinks_item_model.dart';
import 'listlanguage_item_model.dart';

class HomeModel {
  RxList<SlidereverydayessentItemModel> slidereverydayessentItemList =
      RxList.filled(1, SlidereverydayessentItemModel());

  RxList<ListbackgroundItemModel> listbackgroundItemList =
      RxList.filled(4, ListbackgroundItemModel());

  RxList<ListfortunericeItemModel> listfortunericeItemList =
      RxList.filled(3, ListfortunericeItemModel());

  RxList<ListsoftdrinksItemModel> listsoftdrinksItemList =
      RxList.filled(3, ListsoftdrinksItemModel());

  RxList<ListlanguageItemModel> listlanguageItemList =
      RxList.filled(3, ListlanguageItemModel());
}
