import "package:flutter/material.dart";
import "package:NeteaseCloudMusic/service/playlist/model.dart";

class PlaylistCard extends StatelessWidget {
  final Playlist playlist;

  const PlaylistCard(this.playlist);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _thumbnail(),
          _description(),
        ],
      ),
    );
  }

  Container _description() {
    return Container(
      margin: EdgeInsets.only(left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 200
            ),
            child: Text(
              playlist.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "${playlist.trackCount}",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                ",by ${playlist.creator.nickname}",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _thumbnail() {
    return Stack(
      alignment: FractionalOffset(.5, -0.5),
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(8.0)),
        ),
        Container(
          height: 60,
          width: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(playlist.coverImgUrl),
          ),
        ),
      ],
    );
  }
}
