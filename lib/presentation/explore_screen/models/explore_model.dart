import 'package:get/get.dart';
import 'listjaggerypowder_item_model.dart';
import 'listtomato_item_model.dart';
import 'liststrawberry_item_model.dart';
import 'listplus_twelve_item_model.dart';
import 'listparlerusk_item_model.dart';

class ExploreModel {
  RxList<ListjaggerypowderItemModel> listjaggerypowderItemList =
      RxList.filled(4, ListjaggerypowderItemModel());

  RxList<ListtomatoItemModel> listtomatoItemList =
      RxList.filled(4, ListtomatoItemModel());

  RxList<ListstrawberryItemModel> liststrawberryItemList =
      RxList.filled(4, ListstrawberryItemModel());

  RxList<ListplusTwelveItemModel> listplusTwelveItemList =
      RxList.filled(4, ListplusTwelveItemModel());

  RxList<ListparleruskItemModel> listparleruskItemList =
      RxList.filled(4, ListparleruskItemModel());
}
