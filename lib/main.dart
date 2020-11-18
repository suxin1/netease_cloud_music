import "package:flutter/material.dart";
import "package:NeteaseMusicMobileFake/screen/home/Home.dart";
// import "package:NeteaseMusicMobileFake/screen/detail/Detail.dart";
import "package:NeteaseMusicMobileFake/store/count.dart";
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class MyApp extends StatelessWidget {
  final Store<CountState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CountState>(
      store: store,
      child: MaterialApp(
        title: "planets",
        home: HomeScreen(),
      ),
    );
  }
}

void main() {
  final store =
      Store<CountState>(reducer, initialState: CountState.initState());
  runApp(MyApp(store));
}
