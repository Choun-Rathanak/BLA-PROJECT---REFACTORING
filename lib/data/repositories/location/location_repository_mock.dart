
import 'package:homework/data/dummy_data.dart';
import 'package:homework/data/repositories/location/location_repository.dart';
import 'package:homework/model/ride/locations.dart';


class LocationRepositoryMock implements LocationRepository {
  @override
  List<Location> fetchLocation() {
    return fakeLocations;
  }

}
