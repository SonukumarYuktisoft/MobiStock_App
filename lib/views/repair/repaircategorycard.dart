import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:mobistock_app/views/repair/reapair_form_screen.dart';

class Repaircategorycard extends StatefulWidget {
  const Repaircategorycard({super.key});

  @override
  State<Repaircategorycard> createState() => _RepaircategorycardState();
}

class _RepaircategorycardState extends State<Repaircategorycard> {
   final List<Map<String, dynamic>> categories = [
    {'name': 'Phone', 'icon': Icons.phone_android, 'color': Colors.blue},
    {'name': 'Laptop', 'icon': Icons.laptop_mac, 'color': Colors.green},
    {'name': 'TV / AC', 'icon': Icons.tv, 'color': Colors.orange},
    {'name': 'Washing Machine', 'icon': Icons.local_laundry_service, 'color': Colors.purple},
    {'name': 'Refrigerator', 'icon': Icons.kitchen, 'color': Colors.teal},
    {'name': 'Microwave', 'icon': Icons.microwave, 'color': Colors.red},
  ];

  RxBool isSelected = false.obs;
  
  get onChanged => null;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          // Handle tap event
          Get.defaultDialog(
            title: "Consent Required",

            cancel: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Cancel"),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            
              children: [
                Icon(Icons.shield, color: Colors.blueAccent, size: 40),
                SizedBox(height: 12),
              Obx((){
                return Checkbox(value: isSelected.value, onChanged:(value) {
                  // isSelected.value = value ?? false;
                  if (value != null) {
                    isSelected.value = value;
                    Get.to( RepairServicesScreen());

                  }
                });
              }),
              


                Text(
                  "To proceed with your repair, we need permission to share your details with our verified partner.",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 12),

                Text.rich(
                  TextSpan(
                    text: "I accept the ",
                    children: [
                      TextSpan(
                        text: "terms & conditions",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        child: Container(
          width: 130,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffd9e7ff),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/icons/phone.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "label",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
