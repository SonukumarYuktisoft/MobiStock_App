import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mobistock_app/widgets/ProductDetailsPage.dart';

class Purchasecard extends StatelessWidget {
  final Map<String, dynamic> purchase;
  const Purchasecard({Key? key, required this.purchase}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () => Get.to( ProductDetailsPage(purchase: purchase)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: Offset.zero,
              blurRadius: 4.5,
              spreadRadius: -2,
              color: Colors.grey.withOpacity(.1),
              
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  purchase['image'],
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                purchase['product'],
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                "Date: ${purchase['date']}",
                style: TextStyle(fontSize: 11, color: Colors.grey[700]),
              ),
              Text(
                "Order: ${purchase['orderId']}",
                style: TextStyle(fontSize: 11, color: Colors.grey[700]),
              ),
              Text(
                "Shop: ${purchase['shop']}",
                style: TextStyle(fontSize: 11, color: Colors.grey[700]),
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    purchase['amount'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                    decoration: BoxDecoration(
                      color: purchase['status'] == 'Paid'
                          ? Colors.green.shade100
                          : Colors.orange.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      purchase['status'],
                      style: const TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const Divider(height: 16),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.to(ProductDetailsPage(purchase: purchase));
                      },
                      icon: const Icon(
                        Icons.receipt_long,
                        size: 18,
                        color: Colors.deepPurple,
                      ),
                      tooltip: "View Invoice",
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.download_rounded,
                        size: 18,
                        color: Colors.black87,
                      ),
                      tooltip: "Download PDF",
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(ProductDetailsPage(purchase: purchase));
                      },
                      child: const Text(
                        "Details",
                        style: TextStyle(fontSize: 12, color: Colors.deepPurple),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
