import 'package:flutter/material.dart';

class RepairWidgets {
  static Widget repairheading({required String heading, required Color color}) {
    return Text(
      heading,
      style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  static Widget repairsoffers({required String title, required Color color, required double size,}) {
    return Container(
      height: size,
      width: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.local_offer,color: Colors.white,size:size*0.4,),
            ),
            Flexible(child: Text(title,
              style: TextStyle(color: Colors.white,),
            )),
          ],
        )),
      ),
    );
  }


  static repaircategory({required String imageAsset, required String label , required VoidCallback onTap}) {
    return GestureDetector(
      onTap:onTap,
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
                    imageAsset,
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
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  } 

  static Widget repairRadioButton({required bool value, required ValueChanged onChanged}){
    return Radio(
      value: value,
      groupValue: true, // This should be the group value that determines the selected state
      onChanged: onChanged,
      activeColor: Colors.blue, // Customize the active color
    );
  }
  static Widget repairDropdownButton({
    required List<String> items,
    required String selectedItem,
    required ValueChanged<String?> onChanged,
  }) {
    return DropdownButtonFormField<String>(
      value: selectedItem,
      onChanged: onChanged,
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      isExpanded: true, // Makes the dropdown take the full width
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    );  
    
  }

}
