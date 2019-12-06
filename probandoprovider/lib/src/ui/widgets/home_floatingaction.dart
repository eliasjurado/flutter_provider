import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:probandoprovider/src/provider/categoria_be.dart';
import 'package:probandoprovider/src/provider/receta_be.dart';
import 'package:provider/provider.dart';
 class HomeFloatingAction extends StatelessWidget {
   const HomeFloatingAction({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {

     final oReceta = Provider.of<RecetaBE>(context);
     final oCategoria = Provider.of<CategoriaBE>(context);

     return Column(
       mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         FloatingActionButton(
           child: Icon(
             FontAwesomeIcons.gem,
           ),
           backgroundColor: Colors.orange,
           onPressed: (){
             oReceta.setNombreReceta='Arroz con pollo';
             oReceta.setNumeroPersonas=(oReceta.getNumeroPersonas)+1;
             oCategoria.setDescripcionCategoria="Segundo";
           },
         ),
         SizedBox(
           height: 10.0,
         ),
         FloatingActionButton(
           child: Icon(
             FontAwesomeIcons.wheelchair,
           ),
           backgroundColor: Colors.lightBlue,
           onPressed: (){
             oReceta.setNombreReceta='Wantan frito';
             oReceta.setNumeroPersonas=(oReceta.getNumeroPersonas)-1;
             oCategoria.setDescripcionCategoria="Entrada";
           },
         )
       ],
     );
   }
 }