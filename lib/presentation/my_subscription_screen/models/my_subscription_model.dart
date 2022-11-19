import 'package:get/get.dart';
import 'package:grocery_app/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listcard_item_model.dart';

class MySubscriptionModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;

  RxList<ListcardItemModel> listcardItemList =
      RxList.filled(3, ListcardItemModel());
}
