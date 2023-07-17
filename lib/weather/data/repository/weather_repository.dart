import 'package:clean_architecture_weather/weather/data/datasource/remote_datasource.dart';
import 'package:clean_architecture_weather/weather/domain/entities/weather.dart';
import 'package:clean_architecture_weather/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await baseRemoteDataSource.getWeatherByCityName(cityName))!;
  }


}