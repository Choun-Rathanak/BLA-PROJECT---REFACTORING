import 'package:homework/data/repositories/location/location_repository.dart';
import 'package:homework/data/repositories/location/location_repository_mock.dart';
import 'package:homework/data/repositories/ride_preference/ride_preference_repository_mock.dart';
import 'package:homework/ui/states/ride_preference_state.dart';
import 'package:provider/single_child_widget.dart';
import 'package:homework/data/repositories/ride/ride_repository.dart';
import 'package:homework/data/repositories/ride/ride_repository_mock.dart';
import 'package:homework/main_common.dart';
import 'package:provider/provider.dart';

List<SingleChildWidget> get devProviders {
   final ridePreferenceRepository = RidePreferenceRepositoryMock();

  return [
    Provider<RideRepository>(create: (_) => RideRepositoryMock(),),
    Provider<LocationRepository>(create: (_) => LocationRepositoryMock(),),
    ChangeNotifierProvider<RidePreferenceState>(create: (_) => RidePreferenceState( ridePreferenceRepository )),
  ];
}

void main() {
  mainCommon(devProviders);
}


