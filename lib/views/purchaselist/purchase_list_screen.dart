import 'package:flutter/material.dart';
import 'package:mobistock_app/views/SubScreens/add_bill_screens.dart';
import 'package:mobistock_app/widgets/exclusive_offers.dart';
import 'package:mobistock_app/widgets/purchasecard.dart';

class PurchaseListScreen extends StatefulWidget {
  @override
  State<PurchaseListScreen> createState() => _PurchaseListScreenState();
}

class _PurchaseListScreenState extends State<PurchaseListScreen> {
  final List<Map<String, dynamic>> purchases = [
    {
      'product': 'Galaxy S24 Ultra',
      'date': 'Apr 20, 2024',
      'orderId': '#ORD2045623',
      'amount': '₹ 92,999',
      'status': 'EMI Running',
      'shop': 'Mobile World - Delhi',
      'image': 'assets/images/galaxy_s21.jpg',
    },
    {
      'product': 'iPhone 14 Pro',
      'date': 'Mar 15, 2024',
      'orderId': '#ORD1987654',
      'amount': '₹ 1,29,999',
      'status': 'Paid',
      'shop': 'iStore - Mumbai',
      'image': 'assets/images/galaxy_s21.jpg',
    },
    {
      'product': 'Galaxy S24 Ultra',
      'date': 'Apr 20, 2024',
      'orderId': '#ORD2045623',
      'amount': '₹ 92,999',
      'status': 'EMI Running',
      'shop': 'Mobile World - Delhi',
      'image': 'assets/images/galaxy_s21.jpg',
    },
    {
      'product': 'iPhone 14 Pro',
      'date': 'Mar 15, 2024',
      'orderId': '#ORD1987654',
      'amount': '₹ 1,29,999',
      'status': 'Paid',
      'shop': 'iStore - Mumbai',
      'image': 'assets/images/galaxy_s21.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F0F8),
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(Icons.shopping_bag_rounded),
            SizedBox(width: 8),
            Text("My Purchases"),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Stack(
            children: [
              exclusive_offers(height: 150, image: "assets/images/superbenner.jpg"),
              Column(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                  
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Upgrade Now",style: TextStyle(color: Colors.black),)),
                    )),
                ],
              ),
            ],
          ),

                const SizedBox(height: 16),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: purchases.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.52,
                  ),
                  itemBuilder: (context, index) {
                    return Purchasecard(purchase: purchases[index],);
                  },
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AddBillPage()),
                );
              },
              icon: const Icon(Icons.add_circle_outline, size: 20),
              label: const Text("Add Bill"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

  // Widget _bannerAd() {
  //   return Container(
  //     height: 120,
  //     padding: const EdgeInsets.all(20),
  //     decoration: BoxDecoration(
  //       color: const Color(0xFF4B0082),
  //       borderRadius: BorderRadius.circular(16),
  //       image: const DecorationImage(
  //         image: AssetImage('assets/images/banner.png'),
  //         fit: BoxFit.cover,
  //       ),
  //     ),
  //     child: Align(
  //       alignment: Alignment.bottomRight,
  //       child: ElevatedButton(
  //         onPressed: () {},
  //         style: ElevatedButton.styleFrom(
  //           backgroundColor: Colors.white,
  //           foregroundColor: Colors.deepPurple,
  //           shape: const StadiumBorder(),
  //         ),
  //         child: const Text("Upgrade Now"),
  //       ),
  //     ),
  //   );
  // }

