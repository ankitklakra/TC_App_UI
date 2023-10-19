import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:async';

import 'package:url_launcher/url_launcher.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _scanBarcode="N.A";
  Future<void> scanQR() async {
    String barcodeScanRes;

    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);

    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }


    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }
_launchURL()async{
    final Uri url=Uri.parse('https://technocracy.nitrr.ac.in/');
    if(!await launchUrl(url)){
      throw Exception("Could not launch url");
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade100,
        title: const Text('Home'),
        actions: [
          IconButton(onPressed:()async{scanQR();}, icon: Icon(Icons.qr_code),),
          SizedBox(width: 10),
        ],
      ) ,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset('asset/images/prop1.png'),
          Text("Scan result:${_scanBarcode}"),
         SizedBox(
           width: double.infinity,
           child: ElevatedButton(onPressed: ()async{_launchURL();},child: const Text('Visit Web',),style: ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade100),),
         ),

        ],
      ),
    );
  }
}
