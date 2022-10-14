import "package:get_it/get_it.dart";

import 'package:netease_cloud_music/service/counter.dart';
import 'package:netease_cloud_music/service/user/user.dart';
import "package:netease_cloud_music/service/playlist/playlist.dart";

GetIt service = GetIt.asNewInstance();

void initService() {
  service.registerSingleton<Counter>(Counter());
  service.registerSingleton<User>(User());
  service.registerSingleton<PlaylistService>(PlaylistService());
}
