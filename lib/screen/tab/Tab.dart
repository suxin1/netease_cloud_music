import "package:flutter/material.dart";
import "package:NeteaseCloudMusic/components/TextType.dart";
// Flutter code sample for TabController

// This example shows how to listen to page updates in [TabBar] and [TabBarView]
// when using [DefaultTabController].

final List<Tab> tabs = <Tab>[
  Tab(
    child: Text(
      "Zeroth",
      style: TextType.commonTextStyle.copyWith(color: Colors.black87),
    ),
  ),
  Tab(
    child: Text(
      "First",
      style: TextType.commonTextStyle.copyWith(color: Colors.black87),
    ),
  ),
  Tab(
    child: Text(
      "Second",
      style: TextType.commonTextStyle.copyWith(color: Colors.black87),
    ),
  ),
];

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          body: Container(
            child: Stack(
              children: [
                TabBarView(
                  children: tabs.map((Tab tab) {
                    return Center(
                      child: Text(
                        ' Tab',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    );
                  }).toList(),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                  ),
                  child: TabBar(
                    tabs: tabs,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
