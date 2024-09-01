import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'core/platform/network_info.dart';
import 'config/network/endpoints/endpoints_class.dart';
import 'config/network/endpoints/production_endpoints.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Register NetworkInfo
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => NetworkInfoImpl(sl()));

  //Register Endpoints
  sl.registerLazySingleton<Endpoints>(() => ProductionEndpoints());
}
