import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobistock_app/views/cibilscore/cibil_score_screen.dart';
import 'package:mobistock_app/views/dashboard/dashboard_screen.dart';
import 'package:mobistock_app/views/purchaselist/purchase_list_screen.dart';
import 'package:mobistock_app/views/repair/repair_screen.dart';
import 'package:mobistock_app/views/spinandwin/spin_and_win_screen.dart';

class Buttomnavigation extends StatefulWidget {
  const Buttomnavigation({super.key});

  @override
  State<Buttomnavigation> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<Buttomnavigation> {
  // Using GetX for state management
  // This controller manages the state of the home screen, including the selected index for the navigation bar and the list of pages to display.
  final HomeControllerScreen controller = Get.put(HomeControllerScreen());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          height: 80,
          elevation: 5,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
              icon: Icon(Icons.receipt_long),
              label: 'Purchases',
            ),
            NavigationDestination(icon: Icon(Icons.build), label: 'Repair'),
            NavigationDestination(
              icon: Icon(Icons.credit_score),
              label: 'CIBIL',
            ),
            NavigationDestination(icon: Icon(Icons.casino), label: 'Spin'),
          ],
        ),
      ),
      // The body of the Scaffold displays the currently selected page based on the selected index.
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
    
    );
  }
}

// This is a placeholder for the Buttomnavigation screen.
// It currently does not implement any specific functionality.
class HomeControllerScreen extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final List<Widget> pages = [
    DashboardScreen(),
     PurchaseListScreen(),
     RepairScreen (),
     CibilScoreScreen(),
     SpinAndWinScreen(),
  ];
}
