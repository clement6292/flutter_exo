import 'package:flutter/material.dart';
import 'package:flutter_exo/datatable_page.dart';
import 'package:flutter_exo/home_page.dart';
import 'package:flutter_exo/aside_page.dart';
import 'package:flutter_exo/country_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'welcome to Milan ',
       
       home:const HomePage(),

      routes:{
        '/home':(context) => const  HomePage(),
        '/menu':(context) => const AsidePage(),
        '/data':(context) => const DatatablePage(),
        '/country':(context)=> const CountryPage(),
    
      } ,

    );
  }
}
