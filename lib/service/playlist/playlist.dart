import "dart:convert";

import "package:dio/dio.dart";
import "package:rxdart/rxdart.dart";
import "package:built_collection/built_collection.dart";

import 'package:netease_cloud_music/network/httpRequest.dart';
import 'package:netease_cloud_music/service/playlist/model.dart';

class PlaylistService {
  BehaviorSubject<BuiltList<Playlist>> _playlists =
      BehaviorSubject.seeded(BuiltList<Playlist>());
  Stream get stream$ => _playlists.stream;

  BuiltList<Playlist> get current => _playlists.value;

  PlaylistService();

  Future<Response<dynamic>> get(int uid) async {
    Response response = await request.get("/user/playlist", params: {
      "uid": uid,
    });
    Playlists playlists = Playlists.fromMap(response.data);

    _playlists.add(playlists.playlist);

    return response;
  }
}
