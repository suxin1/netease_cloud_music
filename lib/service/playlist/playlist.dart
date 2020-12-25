import "dart:convert";

import 'package:NeteaseCloudMusic/network/httpRequest.dart';
import 'package:NeteaseCloudMusic/service/model/playlist.dart';
// import "package:flutter/material.dart";
import "package:dio/dio.dart";
import "package:rxdart/rxdart.dart";
// import "package:fluttertoast/fluttertoast.dart";

// import "package:NeteaseCloudMusic/service/user/user.dart";

class Playlist {
  BehaviorSubject<PlaylistResponse> _playlists =
      BehaviorSubject.seeded(PlaylistResponse());
  Stream get stream$ => _playlists.stream;

  PlaylistResponse get current => _playlists.value;

  Playlist();

  Future<Response<dynamic>> get(int uid) async {
    Response response = await request.get("/user/playlist", params: {
      "uid": uid,
    });
    PlaylistResponse playlist = PlaylistResponse.fromMap(response.data);

    _playlists.add(playlist);

    return response;
  }
}
