import 'package:flutter/material.dart';

class QuickActionCard extends StatelessWidget {
  final String label;
  final String imageAsset;
  final VoidCallback onTap;

  const QuickActionCard({
    super.key,
    required this.label,
    required this.imageAsset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          width: 125,
          // height: 170,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black26,
            //     // blurRadius: 0,
            //     offset: Offset(2, 4),
            //   ),
            // ],
          ),
          child: Column(
            children: [
              // Icon section (grey background)
              Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:Color(0xffd9e7ff),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Center(
                    child: Image.asset(
                      imageAsset,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
              ),
        
              // Text label section
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all( 8.0),
                    child: Text(
                      label,
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
