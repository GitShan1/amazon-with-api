import 'dart:convert';
import 'package:api/postapi/task2api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class PostCategory extends StatefulWidget {
  const PostCategory({super.key});

  @override
  State<PostCategory> createState() => _PostCategoryState();
}

class _PostCategoryState extends State<PostCategory> {
  TextEditingController catid = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController createdby = TextEditingController();

  List<dynamic> cat = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> postCategories() async {
    try {
      var apiResponse = await http.post(
        Uri.parse("http://catodotest.elevadosoftwares.com/Category/InsertCategory"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "categoryId": catid.text,
          "category": category.text,
          "description": description.text,
          "createdBy": createdby.text
        }),
      );
      if (apiResponse.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Category added successfully")),
        );
        getData();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to add category")),
        );
      }
      return jsonDecode(apiResponse.body);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  Future<void> getData() async {
    try {
      var apiResponse = await http.get(Uri.parse(
          "http://catodotest.elevadosoftwares.com/Category/GetAllCategories"));

      if (apiResponse.statusCode == 200) {
        var apiResponseData = jsonDecode(apiResponse.body);
        setState(() {
          cat = apiResponseData["categoryList"];
          print(cat);
        });
      } else {
        throw Exception("Failed to load categories");
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  Future<void> deleteCategory(int categoryId) async {
    try {
      var apiResponse = await http.post(
          Uri.parse("http://catodotest.elevadosoftwares.com/Category/RemoveCategory"),
          headers: {"Content-Type":"application/json"},
          body:jsonEncode({
            "categoryId":categoryId
          })
      );
      if (apiResponse.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Category deleted successfully")),
        );
        getData();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to delete category")),
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
        centerTitle: true,
        title: Text("Post Category"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
                postCategories();
              },
              child: Text("Save Category"),
            ),
            SizedBox(height: 20),

            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: FutureBuilder(future: getData(), builder: (context,snapshot){
                if(snapshot.connectionState==ConnectionState.waiting){
                  return CircularProgressIndicator();
                }
                else if(snapshot.hasError){
                  return Text("Error:${snapshot.error}");
                }
                else if(snapshot.hasData){
                  return ListView.builder(
                    itemCount: cat.length,
                    itemBuilder: (BuildContext context, int index) {
                      var oneCategory = cat[index];
                      return ListTile(
                        title: Text("Category ID: ${oneCategory["categoryId"].toString()}"),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Category: ${oneCategory["category"]}"),
                            Text("Description: ${oneCategory["description"]}"),
                            Text("Created By: ${oneCategory["createdBy"].toString()}"),
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => editpage(editcategory: oneCategory),
                                ),
                                );
                              },
                              icon: Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                showDialog(context: context, builder: (BuildContext context){
                                  return AlertDialog(
                                    title: Container(
                                      height: 150,
                                      width: 250,
                                      child: Column(
                                        children: [
                                          Text("Are you sure"),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                                deleteCategory(oneCategory["categoryId"]);
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
                else{
                  return Text("No user found");
                }
              }
              ),
            ),
          ],
        ),
      ),
    );
  }
}import 'dart:convert';
import 'package:api/postapi/task2api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class PostCategory extends StatefulWidget {
  const PostCategory({super.key});

  @override
  State<PostCategory> createState() => _PostCategoryState();
}

class _PostCategoryState extends State<PostCategory> {
  TextEditingController catid = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController createdby = TextEditingController();

  List<dynamic> cat = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> postCategories() async {
    try {
      var apiResponse = await http.post(
        Uri.parse("http://catodotest.elevadosoftwares.com/Category/InsertCategory"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "categoryId": catid.text,
          "category": category.text,
          "description": description.text,
          "createdBy": createdby.text
        }),
      );
      if (apiResponse.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Category added successfully")),
        );
        getData();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to add category")),
        );
      }
      return jsonDecode(apiResponse.body);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  Future<void> getData() async {
    try {
      var apiResponse = await http.get(Uri.parse(
          "http://catodotest.elevadosoftwares.com/Category/GetAllCategories"));

      if (apiResponse.statusCode == 200) {
        var apiResponseData = jsonDecode(apiResponse.body);
        setState(() {
          cat = apiResponseData["categoryList"];
          print(cat);
        });
      } else {
        throw Exception("Failed to load categories");
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  Future<void> deleteCategory(int categoryId) async {
    try {
      var apiResponse = await http.post(
          Uri.parse("http://catodotest.elevadosoftwares.com/Category/RemoveCategory"),
          headers: {"Content-Type":"application/json"},
          body:jsonEncode({
            "categoryId":categoryId
          })
      );
      if (apiResponse.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Category deleted successfully")),
        );
        getData();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to delete category")),
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
        centerTitle: true,
        title: Text("Post Category"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
                postCategories();
              },
              child: Text("Save Category"),
            ),
            SizedBox(height: 20),

            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: FutureBuilder(future: getData(), builder: (context,snapshot){
                if(snapshot.connectionState==ConnectionState.waiting){
                  return CircularProgressIndicator();
                }
                else if(snapshot.hasError){
                  return Text("Error:${snapshot.error}");
                }
                else if(snapshot.hasData){
                  return ListView.builder(
                    itemCount: cat.length,
                    itemBuilder: (BuildContext context, int index) {
                      var oneCategory = cat[index];
                      return ListTile(
                        title: Text("Category ID: ${oneCategory["categoryId"].toString()}"),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Category: ${oneCategory["category"]}"),
                            Text("Description: ${oneCategory["description"]}"),
                            Text("Created By: ${oneCategory["createdBy"].toString()}"),
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => editpage(editcategory: oneCategory),
                                ),
                                );
                              },
                              icon: Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                showDialog(context: context, builder: (BuildContext context){
                                  return AlertDialog(
                                    title: Container(
                                      height: 150,
                                      width: 250,
                                      child: Column(
                                        children: [
                                          Text("Are you sure"),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                                deleteCategory(oneCategory["categoryId"]);
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
                else{
                  return Text("No user found");
                }
              }
              ),
            ),
          ],
        ),
      ),
    );
  }
}