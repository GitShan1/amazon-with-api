import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class getlist extends StatefulWidget {
  const getlist({super.key});

  @override
  State<getlist> createState() => _getlistState();
}

class _getlistState extends State<getlist> {
  var a=[];
  bool isLoading=false;
  Future<void> getData()async{
    var apiResponse=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    setState(() {
      isLoading=true;
    });
    if(apiResponse.statusCode==200){
      setState(() {
        isLoading=false;
        a=json.decode(apiResponse.body);
      });
    }
    else{
      throw Exception("No data");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("Json Placeholder"),
        ),
        body:Column(
          children: [
            ElevatedButton(onPressed: (){getData();}, child: Text("Click")),
            SizedBox(height: 20,),
            isLoading?CircularProgressIndicator():
            Expanded(
              child: ListView.builder(
                  itemCount:a.length,
                  itemBuilder: (context,index){
                    var user=a[index];
                    return ListTile(
                      title: Text("userId:${user["userId"].toString()}"),
                      subtitle: Text(
                          "id:${user["id"].toString()}\n"
                              "title:${user["title"]}\n"
                              "body:${user["body"]}\n"
                      ),
                    );
                  }),
            )
          ],
        )

    );
  }
}
