import 'package:get_it/get_it.dart';

import 'services/navigation_service.dart';

GetIt sl = GetIt.instance;

void initLocator(){
   sl.registerLazySingleton(() => NavigationService());
}