import 'package:dio/dio.dart';
import 'package:flutter_app_iuorweioprw/controller/controller.dart';
import 'package:flutter_app_iuorweioprw/model/data.dart';


class Api {

  void getData(String pais) async {
    String baseUrl = "https://api.covid19api.com/summary";
    Response response;
    Dio dio = Dio();
    response = await dio.get(baseUrl);
    print('${response.data['Countries'][23]['Date']}');
    Controller.to.test = response.data['Countries'][23]['Date'];
    Controller.to.update();
  }

  void getInfos(String pais) async {
    String baseUrl = "https://api.covid19api.com/summary"; //PAISES NEW CONFIRMED
    Response response;
    Dio dio = Dio();
    response = await dio.get(baseUrl);
    var paises = (response.data['Countries'] as List).map((item){
      return Data.fromJson(item);
    }).toList();

    if(pais != ''){
      var paisess = paises.where((element) => element.Country.toLowerCase() == pais.toLowerCase()).first;
      print(paisess.Country);
      Controller.to.test1 = paisess.newconfirmed.toString();
      Controller.to.update();
    } else {
      print('${response.data['Countries'][23]['NewConfirmed']}'); //VALOR PADRAO NEW CONFIRMED BRASIL
      Controller.to.test1 = response.data['Countries'][23]['NewConfirmed'].toString();
      Controller.to.update();
    }
  }

  void getTest2(String pais) async {
    String baseUrl = "https://api.covid19api.com/summary";//PAISES TOTAL CONFIRMED
    Response response;
    Dio dio = Dio();
    response = await dio.get(baseUrl);
    var paises = (response.data['Countries'] as List).map((item){
      return Data.fromJson(item);
    }).toList();

    if(pais != ''){
      var paisess = paises.where((element) => element.Country.toLowerCase() == pais.toLowerCase()).first;
      print(paisess.Country);
      Controller.to.test2 = paisess.totalconfirmed.toString();
      Controller.to.update();
    } else {
      print('${response.data['Countries'][23]['TotalConfirmed']}'); //VALOR PADRAO TOTAL CONFIRMED BRASIL
      Controller.to.test2 = response.data['Countries'][23]['TotalConfirmed'].toString();
      Controller.to.update();
    }
  }

  void getTest3(String pais) async {
    String baseUrl = "https://api.covid19api.com/summary"; //paises //total recovered
    Response response;
    Dio dio = Dio();
    response = await dio.get(baseUrl);
    var paises = (response.data['Countries'] as List).map((item){
      return Data.fromJson(item);
    }).toList();

    if(pais != ''){
      var paisess = paises.where((element) => element.Country.toLowerCase() == pais.toLowerCase()).first;
      print(paisess.Country);
      Controller.to.test3 = paisess.totalrecovered.toString();
      Controller.to.update();
    } else {
      print('${response.data['Countries'][23]['TotalRecovered']}'); //VALOR PADRAO TOTAL RECOVERED BRASIL
      Controller.to.test3 = response.data['Countries'][23]['TotalRecovered'].toString();
      Controller.to.update();

    }
  }
  void getTest4(String pais) async {
    String baseUrl = "https://api.covid19api.com/summary"; //paises //total deaths
    Response response;
    Dio dio = Dio();
    response = await dio.get(baseUrl);
    var paises = (response.data['Countries'] as List).map((item){
      return Data.fromJson(item);
  }).toList();
    if(pais != ''){
      var paisess = paises.where((element) => element.Country.toLowerCase() == pais.toLowerCase()).first;
      print(paisess.Country);
      Controller.to.test4 = paisess.totaldeaths.toString();
      Controller.to.update();
    } else {
      print('${response.data['Countries'][23]['TotalDeaths']}'); //VALOR PADRAO totalDeaths BRASIL
      Controller.to.test4 = response.data['Countries'][23]['TotalDeaths'].toString();
      Controller.to.update();

    }
  }
}


