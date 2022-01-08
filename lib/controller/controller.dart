import 'package:flutter_app_iuorweioprw/model/data.dart';
import 'package:flutter_app_iuorweioprw/repository/api.dart';
import 'package:get/get.dart';

class Controller extends GetxController {

  static Controller get to => Get.find();
  
  Api api = Api();
  List<Data> list = [
  ];

  void getDataFromRepository(String pais) {
    api.getData(pais);
  }

  void getInfos(String pais) {
    api.getInfos(pais);
  }

  void getTest2(String pais) {
    api.getTest2(pais);
  }

  void getTest3(String pais) {
    api.getTest3(pais);
  }

  void getTest4(String pais) {
    api.getTest4(pais);
  }


  var test = "";
  var test1 = "";
  var test2 = "";
  var test3 = "";
  var test4 = "";

  var clear = "";



}