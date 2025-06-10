import 'package:flutter/material.dart';
import 'package:mobistock_app/widgets/exclusive_offers.dart';
import 'package:mobistock_app/widgets/latest_purchase_carousel.dart';
import 'package:mobistock_app/widgets/quick_actions_cards.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Dashboard')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange.shade400, Colors.deepOrange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '🎯 EMI pending? Spin to Win offers!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.campaign, size: 40, color: Colors.white),
                    ],
                  ),
                ),
              ),
              // Latest Purchases Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Purchases",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () => (),
                    child: Text(
                      "View All",
                      style: TextStyle(color: Colors.deepPurple, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              LatestPurchaseCarousel(),

              SizedBox(height: 20),
              Text(
                'Quick Actions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Quick Actions Cards
              QuickActionCardBuilder(),
              SizedBox(height: 20),
              // Exclusive Offers Section
              Text(
                "Exclusive Offers",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Placeholder for Exclusive Offers
              exclusive_offers(height: 150,image: "assets/images/superbenner.jpg",),
            ],
          ),
        ),
      ),
    );
  }
}

class QuickActionCardBuilder extends StatelessWidget {
  const QuickActionCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      childAspectRatio: 0.8,
    
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      shrinkWrap: true,
      
      physics: NeverScrollableScrollPhysics(),
      children: [
        QuickActionCard(
          label: 'Term Life Insurance',
          imageAsset: 'assets/icons/term_life_insurance.png',
          onTap: () {},
        ),
        QuickActionCard(
          label: 'Health Insurance',
          imageAsset: 'assets/icons/heart.png',
          onTap: () {},
        ),
        QuickActionCard(
          label: 'Car Insurance',
          imageAsset: 'assets/icons/car_insurance.png',
          onTap: () {},
        ),
        QuickActionCard(
          label: '2 Wheeler Insurance',
          imageAsset: 'assets/icons/scooter.png',
          onTap: () {},
        ),
        QuickActionCard(
          label: 'Investment Plans',
          imageAsset: 'assets/icons/investment_insurance.png',
          onTap: () {},
        ),
        QuickActionCard(
          label: 'Guaranteed Returns',
          imageAsset: 'assets/icons/money_back.png',
          onTap: () {},
        ),
        QuickActionCard(
          label: 'Retirement Plan',
          imageAsset: 'assets/icons/retirement.png',
          onTap: () {},
        ),
        QuickActionCard(
          label: 'Child Saving Plan',
          imageAsset: 'assets/icons/child_saving_insurance.png',
          onTap: () {},
        ),
        QuickActionCard(
          label: 'Family Health Insurance',
          imageAsset: 'assets/icons/family_insurance.png',
          onTap: () {},
        ),
      ],
    );
  }
}
