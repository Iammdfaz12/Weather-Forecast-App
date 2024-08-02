// import 'package:open_weather_example_flutter/src/entities/forecast/forecast.dart';
import 'package:weather_forcast_app/src/entities/weather/weather_data.dart';
import 'forecast.dart';
// import 'package:open_weather_example_flutter/src/entities/weather/weather_data.dart';

/// Derived model class used in the UI
class ForecastData {
  const ForecastData(this.list);
  factory ForecastData.from(Forecast forecast) {
    return ForecastData(
      forecast.list.map((item) => WeatherData.from(item)).toList(),
    );
  }
  final List<WeatherData> list;
}
