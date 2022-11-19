import 'package:get/get.dart';
import 'listcard1_item_model.dart';
import 'listframe_item_model.dart';

class MyCartModel {
  RxList<Listcard1ItemModel> listcard1ItemList =
      RxList.filled(3, Listcard1ItemModel());

  RxList<ListframeItemModel> listframeItemList =
      RxList.filled(2, ListframeItemModel());
}
