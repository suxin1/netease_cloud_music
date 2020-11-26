import "package:get_it/get_it.dart";

import 'package:NeteaseCloudMusic/service/counter.dart';
import 'package:NeteaseCloudMusic/service/user/user.dart';

GetIt service = new GetIt.asNewInstance();

void initService() {
  service.registerSingleton<Counter>(Counter());
  service.registerSingleton<User>(User());
}
