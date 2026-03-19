
import 'package:flutter/material.dart';
import 'package:homework/data/repositories/location/location_repository.dart';


class BlaRidePreferenceModal extends ChangeNotifier{
  final LocationRepository location;
  BlaRidePreferenceModal({required this.location}){
    init();
  }


  void init(){
   location.fetchLocation();
    notifyListeners();
  }
}