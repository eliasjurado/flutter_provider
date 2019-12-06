import 'package:flutter/material.dart';
import 'package:probandoprovider/src/provider/receta_be.dart';
import 'package:probandoprovider/src/provider/categoria_be.dart';
import 'package:probandoprovider/src/ui/home_page.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) => RecetaBE()),
        ChangeNotifierProvider(builder: (context) => CategoriaBE()),
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {'home': (context) => Home()},
      ),
    );
  }
}
