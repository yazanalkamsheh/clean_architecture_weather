import 'dart:convert';

import 'package:clean_architecture_weather/core/utils/constance.dart';
import 'package:clean_architecture_weather/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try{
      var response = await Dio().get('${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch(e){
      print(e);
      return null;
    }
  }


}