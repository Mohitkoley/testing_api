import 'package:get/get.dart';
import 'package:testing_api/controller/controller.dart';
import 'package:testing_api/service/service.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<Controller>(() => Controller());
    Get.lazyPut<Service>(() => Service());
  }
}
