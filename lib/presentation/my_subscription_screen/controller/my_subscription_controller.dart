import '/core/app_export.dart';
import 'package:grocery_app/presentation/my_subscription_screen/models/my_subscription_model.dart';

class MySubscriptionController extends GetxController {
  Rx<MySubscriptionModel> mySubscriptionModelObj = MySubscriptionModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    mySubscriptionModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    mySubscriptionModelObj.value.dropdownItemList.refresh();
  }
}
