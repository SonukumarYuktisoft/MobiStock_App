import 'package:flutter/material.dart';
import 'package:mobistock_app/views/repair/widgets/repair_widgets.dart';

class RepairScreen extends StatefulWidget {
  const RepairScreen({super.key});

  @override
  State<RepairScreen> createState() => _RepairScreenState();
}

class _RepairScreenState extends State<RepairScreen> {
  final List<String> offers = [
    "🎉 Book Repair Now & Get 100% OFF within 10 Mins!",
    "🛠️ Repair Now, Pay Later at 0% EMI!",
    "💡 Free Home Pickup for All Repairs!",
  ];
  final List<Map<String, dynamic>> categories = [
    {'name': 'Phone', 'image': "assets/icons/phone.png", },
    {'name': 'Laptop', 'image': "assets/icons/laptop.png", },          
    {'name': 'TV / AC', 'image': "assets/icons/Tv.png", },
    {'name': 'Washing Machine', 'image': "assets/icons/laundry.png", },
    {'name': 'Refrigerator', 'image': "assets/icons/technology.png", },
    {'name': 'Microwave', 'image': "assets/icons/microwave.png", },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repair Services'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RepairWidgets.repairheading(
                heading: "🔥 Exclusive Offers",
                color: Colors.black,
              ),
              const SizedBox(height: 10),
              _offerBanners(),
              const SizedBox(height: 20),
              RepairWidgets.repairheading(
                heading: "🛠️ Repair Services",
                color: Colors.black,
              ),
              const SizedBox(height: 10),
              // _chooseRepairService(),
              const SizedBox(height: 20),
             /* Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.1,
                ),
                itemBuilder: (context, index) {
                  final item = categories[index];
                  return RepairWidgets.repaircategory(
                    imageAsset: item['image'],
                    label: item['name'],
                    onTap: () {
                      // Handle tap event here
                    },
                  );
                },
              ),
            ),
          ),*/
              GridView.extent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.8,

                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                shrinkWrap: true,

                physics: NeverScrollableScrollPhysics(),
                children: [
                  RepairWidgets.repaircategory(
                    imageAsset: "assets/icons/phone.png",
                    label: "Phones",
                    onTap: () {},
                  ), RepairWidgets.repaircategory(
                    imageAsset: "assets/icons/laptop.png",
                    label: "Laptops",
                    onTap: () {},
                  ), RepairWidgets.repaircategory(
                    imageAsset: "assets/icons/Tv.png",
                    label: "TV/AC",
                    onTap: () {},
                  ), RepairWidgets.repaircategory(
                    imageAsset: "assets/icons/laundry.png",
                    label: "Washing Machines",
                    onTap: () {},
                  ), RepairWidgets.repaircategory(
                    imageAsset: "assets/icons/technology.png",
                    label: "Refrigerators",
                    onTap: () {},
                  ), RepairWidgets.repaircategory(
                    imageAsset: "assets/icons/microwave.png",
                    label: "Microwave ",
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  // Widget to display the offer banners

  Widget _offerBanners() {
    return Container(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: offers.length,
        separatorBuilder: (_, __) => SizedBox(width: 12),
        itemBuilder: (context, index) {
          return Container(
            width: 280,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Icon(Icons.local_offer, color: Colors.white),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    offers[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
