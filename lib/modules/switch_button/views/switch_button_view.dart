import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/modules/switch_button/controllers/switch_button_view_controller.dart';
import 'package:get/get.dart';

class SwitchButton extends StatelessWidget {
  SwitchButtonViewController controller = Get.put(SwitchButtonViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SwitchButtonViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(title: Text("switch button")),
            body: Center(
              child: CupertinoSwitch(
                value: controller.value,
                onChanged: (value) {
                  print(value);
                  controller.setValue(value);
                },
              ),
            ),
          );
        });
  }
}
