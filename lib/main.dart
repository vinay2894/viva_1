import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viva_1/controllers/jokecontroller.dart';
import 'package:viva_1/views/screens/Detail_page.dart';
import 'package:viva_1/views/screens/homepage.dart';

void main(){
  runApp(
  ChangeNotifierProvider(create: (context)=>jokecontroller(),
    child: MyApp(),
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) =>  HomePage(),
        'detail_page': (context) =>Detail_page(),
      },
    ) ;
  }
}
