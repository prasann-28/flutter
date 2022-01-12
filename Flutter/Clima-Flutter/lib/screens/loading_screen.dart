import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';
import '../services/location.dart';
import '../services/networking.dart';
import 'location_screen.dart';
import '../services/weather.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}


class _LoadingScreenState extends State<LoadingScreen> {


  double latitude;
  double longitude;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();


  }

  void getLocationData() async{

  WeatherModel weatherModel = WeatherModel();
  var weatherData = await weatherModel.getLocationWeather();
  // var temperature = decodedData['main']['temp'];
  // var condition = decodedData['weather'][0]['id'];
  // var cityName = decodedData['name'];
  // print(temperature);
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return LocationScreen(locationWeather: weatherData,);
  }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
