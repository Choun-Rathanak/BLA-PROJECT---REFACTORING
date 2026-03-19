import 'package:provider/single_child_widget.dart';
import 'package:flutter/material.dart';
import 'package:homework/data/repositories/ride/ride_repository.dart';
import 'package:homework/data/repositories/ride/ride_repository_mock.dart';
import 'package:homework/main_common.dart';
import 'ui/screens/home/home_screen.dart';
import 'ui/theme/theme.dart';
import 'package:provider/provider.dart';

List<SingleChildWidget> get devProviders {
  return [
    Provider<RideRepository>(create: (_) => RideRepositoryMock(),),
  ];
}

void main() {
  mainCommon(devProviders);
}


