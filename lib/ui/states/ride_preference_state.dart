import 'package:flutter/material.dart';
import 'package:homework/data/repositories/ride_preference/ride_preference_repository.dart';
import 'package:homework/model/ride_pref/ride_pref.dart';

class RidePreferenceState extends ChangeNotifier{
 final RidePreferenceRepository _ridePref;
 List<RidePreference> _rideHistory = [];
 RidePreference? selectefPref;
 RidePreferenceState(this._ridePref);
   

Future<void> fetchRidePrefHistory() async{
 try{
  _rideHistory = await _ridePref.fetchRidePreference();
  notifyListeners();
 } catch(e){
   print('Error fetching ride preference history: $e');
 }
 
}

void selectCurPref(RidePreference pref){
  if(selectefPref != pref){
    selectefPref = pref;
    _rideHistory.add(pref);
    notifyListeners();
  }
}


}