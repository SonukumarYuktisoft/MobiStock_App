

import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, dynamic> purchase;
  ProductDetailsPage({required this.purchase});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(purchase['product'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(purchase['image'], height: 300, width: 300, fit: BoxFit.cover),
              SizedBox(height: 16),
              Text(purchase['product'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("Purchase Date: ${purchase['date']}"),
              Text("Order ID: ${purchase['orderId']}"),
              Text("Amount: ${purchase['amount']}"),
              Text("Status: ${purchase['status']}"),
              Text("Shop: ${purchase['shop']}"),
              SizedBox(height: 24),
              ElevatedButton.icon(
                icon: Icon(Icons.download),
                label: Text("Download Invoice"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
