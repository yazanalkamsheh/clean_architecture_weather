import 'package:clean_architecture_weather/weather/domain/entities/weather.dart';
import 'package:clean_architecture_weather/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCityName {
  final BaseWeatherRepository weatherRepository;

  GetWeatherByCityName(this.weatherRepository);

  Future<Weather> execute(String cityName) async {
    return await weatherRepository.getWeatherByCityName(cityName);
  }
}