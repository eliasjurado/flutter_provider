import 'package:flutter/material.dart';
import 'package:probandoprovider/src/provider/receta_be.dart';
import 'package:probandoprovider/src/ui/widgets/home_floatingaction.dart';
import 'package:probandoprovider/src/ui/widgets/home_textbody.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
  //const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final obj = Provider.of<RecetaBE>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(obj.getNombreReceta),
      ),
      body: Center(
        child: HomeTextBody(),
      ),
      floatingActionButton: HomeFloatingAction(),
    );
  }
}