import 'package:flutter/material.dart';
import 'package:probandoprovider/src/provider/categoria_be.dart';
import 'package:probandoprovider/src/provider/receta_be.dart';
import 'package:provider/provider.dart';

class HomeTextBody extends StatelessWidget {
  const HomeTextBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final oReceta = Provider.of<RecetaBE>(context);
    final oCategoria = Provider.of<CategoriaBE>(context);
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          oReceta.getNumeroPersonas.toString(),
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.red,
          ),
        ),
        Text(
          oCategoria.getDescripcionCategoria,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}