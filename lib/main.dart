import "package:flutter/material.dart";
import 'package:audio_service/audio_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:just_audio/just_audio.dart';

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
  String initialPage = accountStr != null ? '/login' : '/home';
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
  final AudioPlayerHandler audioHandler = await AudioService.init(
      builder: () => AudioPlayerHandler(),
      config: AudioServiceConfig(
        androidNotificationChannelId: 'com.shadow.blackhole.channel.audio',
        androidNotificationChannelName: 'BlackHole',
        androidNotificationIcon: 'drawable/ic_stat_music_note',
        androidShowNotificationBadge: true,
        androidStopForegroundOnPause: false,
        // Hive.box('settings').get('stopServiceOnPause', defaultValue: true) as bool,
        notificationColor: Colors.grey[900],
      ));

    GetIt.I.registerSingleton<AudioPlayerHandler>(audioHandler);
}
