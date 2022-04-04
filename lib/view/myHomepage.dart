import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:testing_api/controller/controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<Controller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest api"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Expanded(
                child: Obx(
              () => controller.loading.value
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: controller.user.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  controller.user[index].urlAvatar)),
                          title: Text(controller.user[index].username),
                          subtitle: Text(controller.user[index].email),
                        );
                      },
                    ),
            )),
          ),
        ],
      ),
    );
  }
}
