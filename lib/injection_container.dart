import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'core/platform/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Register NetworkInfo
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => NetworkInfoImpl(sl()));
}
