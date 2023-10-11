import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viva_1/controllers/jokecontroller.dart';
import 'package:viva_1/views/screens/Detail_page.dart';

import '../../helper/api_helper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? jokeSetup = "Loading...";
  String? jokeDelivery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joke of the Day'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Consumer<jokecontroller>(
          builder: (context,pro,_){
            return Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefix: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onSubmitted: (val){

                  },
                ),
              ],
            );
          },
        ),
      )
    );
  }
}