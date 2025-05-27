import 'package:get_it/get_it.dart';

import 'modules/bloc_module.dart';
import 'modules/repository_module.dart';
import 'modules/service_module.dart';


class Injector {
  Injector._();
  static GetIt instance = GetIt.instance;

  static void init() {
    RepositoryModule.init();
    ServiceModule.init();
    BlocModule.init();
  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }


}