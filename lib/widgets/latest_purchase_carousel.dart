import 'package:flutter/material.dart';

class LatestPurchaseCarousel extends StatefulWidget {
  const LatestPurchaseCarousel({super.key});

  @override
  State<LatestPurchaseCarousel> createState() => _LatestPurchaseCarouselState();
}

class _LatestPurchaseCarouselState extends State<LatestPurchaseCarousel> {
  @override
  Widget build(BuildContext context) {
     return SizedBox(
      height: 105,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: 3,
        itemBuilder: (context, index) {
          return latest_purchase_carousel_card();
        },
      ),
    );
  }
}

// ignore: camel_case_types
class latest_purchase_carousel_card extends StatelessWidget {
  const latest_purchase_carousel_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/galaxy_s21.jpg',
              width: 60,
              height: 90,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Samsung Galaxy S21',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Purchased on: Apr 15, 2024',
                  style: TextStyle(fontSize: 11, color: Colors.black45),
                ),
                Text(
                  'Store: Mobile World',
                  style: TextStyle(fontSize: 11, color: Colors.black45),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹ 59,999',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'EMI Paid',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}