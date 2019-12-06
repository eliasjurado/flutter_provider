import 'package:flutter/material.dart';

class PostBE  with ChangeNotifier {
  int _userId;
  int _id;
  String _title;
  String _body;

  PostBE(){
    this._userId = 0;
    this._id = 0; 
    this._title = ''; 
    this._body = '';
  }

  PostBE.AllParameters(int userId,int id,String title,String body){
    this._userId = userId;
    this._id = id; 
    this._title = title; 
    this._body = body;
  }

  //Setters & getters
  set setUserId(int userId){
    this._userId=userId;
    notifyListeners();
  }
  int get getUserId => this._userId;

  set setId(int id){
    this._id=id;
    notifyListeners();
  }
  int get getId => this._id;

  set setTitle(String title){
    this._title=title;
    notifyListeners();
  }
  String get getTitle => this._title;

  set setBody(String body){
    this._body=body;
    notifyListeners();
  }
  String get getBody => this._body;

  //Factory
  factory PostBE.fromJson(Map<String, dynamic> json) {
    return PostBE.AllParameters(
      json['userId'],
      json['id'],
      json['title'],
      json['body'],
    );
  }
}
