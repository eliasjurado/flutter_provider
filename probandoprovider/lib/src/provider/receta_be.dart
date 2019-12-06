import 'package:flutter/material.dart';

class RecetaBE with ChangeNotifier {
  /*una variable privada puede ser private int codigoReceta o un guion bajo 
  como se ve a continuacion*/

  int _codigoReceta;
  int _codigoCategoria;
  String _nombreReceta;
  String _descripcionReceta;
  String _detallePreparacion;
  int _numeroPersonas;
  String _comentarioEstado;


  //Constructor

/*Dart tiene un constructor vacio por default
ahora si quiero pasarle parametros lo puedo hacer de la manera tradicional:

  Receta_BE(int codigoReceta,int codigoCategoria,String nombreReceta,
            String descripcionReceta,String detallePreparacion, int numeroPersonas,
            String comentarioEstado){
    this._codigoReceta = codigoReceta;
    this._codigoCategoria = codigoCategoria;
    this._nombreReceta = nombreReceta;
    this._descripcionReceta = descripcionReceta;
    this._detallePreparacion = detallePreparacion;
    this._numeroPersonas = numeroPersonas;
    this._comentarioEstado = comentarioEstado;
  }

  o que es lo mismo:

  Receta_BE(
    this._codigoReceta,
    this._codigoCategoria,
    this._nombreReceta,
    this._descripcionReceta,
    this._detallePreparacion,
    this._numeroPersonas,
    this._comentarioEstado,
  )
  
  Dart no permite sobrecargar constructores. Lo que permite es crear constructores personalizados

  Receta_BE.ConstructorPersonalizado(String nombreReceta,
            String descripcionReceta,String detallePreparacion, int numeroPersonas,
            String comentarioEstado){
    this._codigoReceta = 0;
    this._codigoCategoria = 0;
    this._nombreReceta = nombreReceta;
    this._descripcionReceta = descripcionReceta;
    this._detallePreparacion = detallePreparacion;
    this._numeroPersonas = numeroPersonas;
    this._comentarioEstado = comentarioEstado;
  }


*/
  //Constructor vacio
  RecetaBE(){
    this._codigoReceta = 0;
    this._codigoCategoria = 0;
    this._nombreReceta = "";
    this._descripcionReceta = "";
    this._detallePreparacion = "";
    this._numeroPersonas = 0;
    this._comentarioEstado = "";
  }

  //Constructor con parametros
  RecetaBE.AllParameters(
    this._codigoReceta,
    this._codigoCategoria,
    this._nombreReceta,
    this._descripcionReceta,
    this._detallePreparacion,
    this._numeroPersonas,
    this._comentarioEstado,
  );

    
//Setters
  set setCodigoReceta(int codigoReceta){
    this._codigoReceta=codigoReceta;
    notifyListeners();
  }
  set setCodigoCategoria(int codigoCategoria){
    this._codigoCategoria=codigoCategoria;
    notifyListeners();
  }
  set setNombreReceta(String nombreReceta){
    this._nombreReceta = nombreReceta;
    notifyListeners();
  }
  set setDescripcionReceta(String descripcionReceta){
    this._descripcionReceta =descripcionReceta;
    notifyListeners();
  }
  set setDetallePreparacion(String detallePreparacion){
    this._detallePreparacion =detallePreparacion;
    notifyListeners();
  }
  set setNumeroPersonas(int numeroPersonas){
    this._numeroPersonas = numeroPersonas;
    notifyListeners();
  }
  set setComentarioEstado(String comentarioEstado){
    this._comentarioEstado =comentarioEstado;
    notifyListeners();
  }

//Getters
  int get getCodigoReceta          => this._codigoReceta;
  int get getCodigoCategoria       => this._codigoCategoria;
  String get getNombreReceta       => this._nombreReceta;
  String get getDescripcionReceta  => this._descripcionReceta;
  String get getDetallePreparacion => this._detallePreparacion;
  int get getNumeroPersonas        => this._numeroPersonas;
  String get getComentarioEstado   => this._comentarioEstado;

//


}