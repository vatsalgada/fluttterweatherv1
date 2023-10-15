import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherBlocLoading());
      try {
        WeatherFactory wf = WeatherFactory('398e90b1ecff6ec336c53c2f5390c43d',
            language: Language.ENGLISH);
        // Weather weather = await wf.currentWeatherByLocation(latitude, longitude);
        //emit(WeatherBlocSuccess(weather: weather));
      } catch (e) {
        emit(WeatherBlocFailure());
      }
      // TODO: implement event handler
    });
  }
}
