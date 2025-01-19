import 'package:flutter/material.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.search),
            hintText: "Search Amazon.in",
            suffixIcon: Icon(Icons.qr_code_scanner_sharp),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/mob1.png"),fit: BoxFit.fill),
              ),
            ),
          )

        ],
      ),

    );
  }
}