import 'dart:io';

import 'package:flutter/material.dart';

class RepairServicesScreen extends StatefulWidget {
  const RepairServicesScreen({super.key});

  @override
  State<RepairServicesScreen> createState() => _RepairServicesScreenState();
}

class _RepairServicesScreenState extends State<RepairServicesScreen> {
String? selectedBrand;
  String? selectedModel;
  String? selectedWarranty;
  List<String> selectedIssues = [];
  File? uploadedFile;

  final TextEditingController addressController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final List<String> availableBrands = ['Samsung', 'Apple', 'Dell'];
  final Map<String, List<String>> modelMap = {
    'Samsung': ['A32', 'S22', 'M12'],
    'Apple': ['iPhone 12', 'iPhone 13'],
    'Dell': ['Inspiron', 'XPS'],
  };
  final List<String> issues = ['Screen', 'Battery', 'Water', 'Buttons'];
  final List<String> serviceTypes = ['Authorized Center', 'Local Verified Partner'];

  String? selectedServiceType;
  final _repairformKey = GlobalKey<FormState>();

  
  @override
  Widget build(BuildContext context) {
return   Scaffold(
  appBar: AppBar(
    title: const Text('Repair Services'),
    backgroundColor: Colors.blue,
  ),
  body: SafeArea(child: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                //  RepairWidgets.repairDropdownButton(items:availableBrands , selectedItem: selectedBrand, onChanged: onChanged) 
         
        ],
      ),
    ),
  )),
  
);
  }
}
