import 'package:flutter/material.dart';

class CategoriaBE with ChangeNotifier {

  int _codigoCategoria;
  String _nombreCategoria;
  String _descripcionCategoria;
  int _codigoEstado;
  String _comentarioEstado;

  //Constructor vacio
  CategoriaBE(){
    this._codigoCategoria = 0;
    this._nombreCategoria = '';
    this._descripcionCategoria = '';
    this._codigoEstado = 0;
    this._comentarioEstado = '';
  }

  //Constructor con parametros
  CategoriaBE.AllParameters(
    this._codigoCategoria,
    this._nombreCategoria,
    this._descripcionCategoria,
    this._codigoEstado,
    this._comentarioEstado,
  );

//Setters
  set setCodigoCategoria(int codigoCategoria){
    this._codigoCategoria=codigoCategoria;
    notifyListeners();
  }
  set setNombreCategoria(String nombreCategoria){
    this._nombreCategoria =nombreCategoria;
    notifyListeners();
  }
  set setDescripcionCategoria(String descripcionCategoria){
    this._descripcionCategoria = descripcionCategoria;
    notifyListeners();
  }
  set setCodigoEstado(int codigoEstado){
    this._codigoEstado =codigoEstado;
    notifyListeners();
  }
  set setComentarioEstado(String comentarioEstado){
    this._comentarioEstado =comentarioEstado;
    notifyListeners();
  }

//Getters
  int get getCodigoCategoria         => this._codigoCategoria;
  String get getNombreCategoria      => this._nombreCategoria;
  String get getDescripcionCategoria => this._descripcionCategoria;
  int get getCodigoEstado            => this._codigoEstado;
  String get getComentarioEstado     => this._comentarioEstado;
}