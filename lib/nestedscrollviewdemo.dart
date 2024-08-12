import 'package:flutter/material.dart';

class NestedViewDemo extends StatefulWidget {
  const NestedViewDemo({super.key});

  @override
  State<NestedViewDemo> createState() => _NestedViewDemoState();
}

class _NestedViewDemoState extends State<NestedViewDemo> {
  @override
  Widget build(BuildContext context) {
    final List<String> tabs = <String>['Tab 1', 'Tab 2'];
    return DefaultTabController(
      length: tabs.length, // This is the number of tabs.
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(handle:
                  NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(title: const Text('Books'),
// This is the title in the app bar.
                pinned: true,
                expandedHeight: 150.0,
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar(
// These are the widgets to put in each tab in the tab bar.
                  tabs: tabs.map((String name) => Tab(text: name)).toList(),
                ),
              ),
              ),
            ];
          },
          body: TabBarView(
// These are the contents of the tab views, below the tabs.
            children: tabs.map((String name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(key: PageStorageKey<String>(name),
                      slivers: <Widget>[
                        SliverOverlapInjector(handle:
                        NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),),
                        SliverPadding(padding: const EdgeInsets.all(8.0),
                          sliver: SliverFixedExtentList( // ListTile widgets.
                            itemExtent: 48.0,
                            delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                return ListTile(
                                  title: Text('Item $index'),);
                              },
                              childCount: 30,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}