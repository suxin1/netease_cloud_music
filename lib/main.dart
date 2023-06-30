import "package:flutter/material.dart";
import 'package:audio_service/audio_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:netease_cloud_music/service/service.dart';
import 'package:netease_cloud_music/service/user/user.dart';

import 'app.dart';

import './bloc/main.dart' as bloc;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // bloc.main();
  initService();
  runAppAsync();
  final user = service.get<User>();
  Future.delayed(Duration(seconds: 1), () {
    user.login(
      "13540239926",
      "ggg123456",
    );
  });
}

void runAppAsync() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? accountStr = prefs.getString(ACCOUNT_DATA_KEY);
  String initialPage = accountStr != null ? '/login': '/home';
  runApp(AppComponent(initialPage: initialPage));
  // if (accountStr != null) {
  //   runApp(
  //     AppComponent(initialPage: '/home'),
  //   );
  // } else {
  //   runApp(AppComponent(
  //     initialPage: '/login',
  //   ));
  // }
}

class AudioPlayerHandler extends BaseAudioHandler {
  final _player = AudioPlayer();

  AudioPlayerHandler() {
    _player.setUrl("https://exampledomain.com/song.mp3");
  }

  @override
  Future<void> play() => _player.play();

  @override
  Future<void> pause() => _player.pause();
}

Future<void> startService() async {
  final AudioPlayerHandler audioHander = await AudioService.init(
    builder: () =>
  )
}
