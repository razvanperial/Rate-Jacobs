import 'package:flutter_application_3/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setuplocator() {
  locator.registerLazySingleton(() => NavigationService());
}
