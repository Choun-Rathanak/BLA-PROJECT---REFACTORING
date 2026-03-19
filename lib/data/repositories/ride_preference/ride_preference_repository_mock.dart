
import 'package:homework/data/dummy_data.dart';
import 'package:homework/data/repositories/ride_preference/ride_preference_repository.dart';

import 'package:homework/model/ride_pref/ride_pref.dart';


class RidePreferenceRepositoryMock implements RidePreferenceRepository {
  @override
  List<RidePreference> fetchRidePreference() {
    return fakeRidePrefs;
  }

}
