import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:testing_api/model/user.dart';
import 'package:testing_api/service/service.dart';

class Controller extends GetxController {
  var user = RxList<User>();
  Service services = Service();
  var loading = true.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    callPostMethod();
  }

  void callPostMethod() async {
    try {
      loading.value = true;
      var result = await Get.find<Service>().getUser();
      if (result != null) {
        user.addAll(result);
      } else {
        print("null");
      }
    } finally {
      // TODO
      loading.value = false;
    }
    update();
  }

  //var getUsers = User().obs;
}
