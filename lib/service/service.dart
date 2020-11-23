import "package:get_it/get_it.dart";

import 'package:NeteaseMusicMobileFake/service/counter.dart';
import 'package:NeteaseMusicMobileFake/service/user/user.dart';

GetIt service = new GetIt.asNewInstance();

void initService() {
  service.registerSingleton<Counter>(Counter());
  service.registerSingleton<User>(User());
}
