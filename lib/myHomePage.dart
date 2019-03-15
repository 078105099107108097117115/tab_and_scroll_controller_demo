import 'package:flutter/material.dart';
import 'package:tab_and_scroll_controller_demo/pageOne.dart';
import 'package:tab_and_scroll_controller_demo/pageThree.dart';
import 'package:tab_and_scroll_controller_demo/pageTwo.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
with SingleTickerProviderStateMixin{

  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  void dispose(){
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: NestedScrollView(
      controller: _scrollController,
        //the boolean basically asks whether or not
        // we have scrolled up or down
        headerSliverBuilder: (BuildContext context,bool boxIsScrolled){
        return<Widget>[
          SliverAppBar(
            title: Text('Tab Controller Example'),
            pinned: true,
            floating: true,
            snap: false,
            forceElevated: boxIsScrolled,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Home',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: 'Help',
                  icon: Icon(Icons.help),
                ),
                Tab(
                  text: 'Infinite ListView Page',
                  icon: Icon(Icons.all_inclusive),
                )
              ],
              controller: _tabController,
            ),
          )
        ];
        },
        body: TabBarView(
            children: <Widget>[
              PageOne(),
              PageTwo(),
              PageThree(),
            ],
        controller: _tabController,
        ),
    ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.compare_arrows),
          onPressed: (){
            _tabController.animateTo(
                2,
                curve: Curves.bounceInOut,
                duration: Duration(
                    milliseconds: 500
                )
            );
            _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: Duration(seconds: 1),
                curve: Curves.bounceOut,
            );
          }
      ),
    );
  }
}
