

import 'package:homework/data/dummy_data.dart';
import 'package:homework/data/repositories/ride/ride_repository.dart';
import '../../../model/ride/ride.dart';

class RideRepositoryMock implements RideRepository {
  @override
  List<Ride> fetchRides() {
    return fakeRides;
  }

}
