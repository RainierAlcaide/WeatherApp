import 'package:geolocator/geolocator.dart';

class Location{
  double longitude=0.0, latitude=0.0;
  Future getLocation() async{
    try{
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
      longitude = position.longitude.toDouble();
      latitude = position.latitude.toDouble();
    }
    catch(e){
      print(e);
    }
  }
}