import 'package:location/location.dart';

class LocationHelper{
  late double latitude;
  late double longitude;
  Future <void> getCurren1tLocation() async{
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;
    //location servis çalışıyor mu
  
    _serviceEnabled = await location.serviceEnabled();
    if(!_serviceEnabled){
      _serviceEnabled=await location.requestService();
      if(!_serviceEnabled){
        return;
      }
    }
    //konum izni
    _permissionGranted = await location.hasPermission();
    if(_permissionGranted ==PermissionStatus.denied){
    _permissionGranted = await location.requestPermission();

    if(_permissionGranted!=PermissionStatus.granted){
      return;
    }
   }
   //izinler tamam ise
   _locationData =await location.getLocation();
   latitude =_locationData.latitude!;
   longitude=_locationData.longitude!;
  }
}