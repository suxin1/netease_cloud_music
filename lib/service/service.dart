import "package:get_it/get_it.dart";

import 'package:NeteaseMusicMobileFake/service/counter.dart';

GetIt service = new GetIt.asNewInstance();

void initService() {
  service.registerSingleton<Counter>(Counter());
}
