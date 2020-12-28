import "package:get_it/get_it.dart";

import 'package:NeteaseCloudMusic/service/counter.dart';
import 'package:NeteaseCloudMusic/service/user/user.dart';
import "package:NeteaseCloudMusic/service/playlist/playlist.dart";

GetIt service = new GetIt.asNewInstance();

void initService() {
  service.registerSingleton<Counter>(Counter());
  service.registerSingleton<User>(User());
  service.registerSingleton<PlaylistService>(PlaylistService());
}
