import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogContainer extends StatelessWidget {
  final VoidCallback onConfirmTap;

  const DialogContainer({Key? key, required this.onConfirmTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('this test will added to your Todo !'),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: Get.back,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: Get.height * 0.05,
                  width: Get.width * 0.22,
                  child: const Center(
                    child: Text('Cancel'),
                  ),
                ),
              ),
              InkWell(
                onTap: onConfirmTap,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: Get.height * 0.05,
                  width: Get.width * 0.22,
                  child: const Center(
                    child: Text('Confirm'),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
