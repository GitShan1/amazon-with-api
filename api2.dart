import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class editpage extends StatefulWidget {
  Map<String,dynamic> editcategory={};
  editpage({super.key,required this.editcategory});

  @override
  State<editpage> createState() => _editpageState();
}

class _editpageState extends State<editpage> {
  TextEditingController catid = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController createdby = TextEditingController();
  void initState(){
    super.initState();
    catid.text=widget.editcategory["categoryId"].toString();
    category.text=widget.editcategory["category"];
    description.text=widget.editcategory["description"];
    createdby.text=widget.editcategory["createdBy"].toString();
  }


  Future<void> updateCategory() async {
    try {
      var apiResponse = await http.post(
        Uri.parse("http://catodotest.elevadosoftwares.com/Category/InsertCategory"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "categoryId": int.parse(catid.text),
          "category": category.text,
          "description": description.text,
          "createdBy": int.parse(createdby.text)
        }),
      );
      if (apiResponse.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Category updated successfully")),
        );


      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to update category")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editcategory"),
      ),
      body:    Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: catid,
              decoration: InputDecoration(
                labelText: 'Category ID',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: category,
              decoration: InputDecoration(
                labelText: 'Category',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: description,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: createdby,
              decoration: InputDecoration(
                labelText: 'Created By',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              updateCategory();
              Navigator.pop(context);
            },
            child: Text("Update Category"),
          ),

        ],
      ),
    );
  }
}