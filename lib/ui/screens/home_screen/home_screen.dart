import 'package:flutter/material.dart';
import 'package:keep_track/core/constants.dart';
import 'package:keep_track/ui/screens/home_screen/home_views/my_habits_view.dart';
import 'package:keep_track/ui/screens/home_screen/home_views/today_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      leading: Icon(Icons.menu),
      actions: [
        k48Horizontal,
        Container(
          width: 200,
          child: TabBar(
            tabs: [
              Tab(
                  child:
                      Text('Today', style: kP.copyWith(color: Colors.white))),
              Tab(
                  child: Text('My Habits',
                      style: kP.copyWith(color: Colors.white))),
            ],
          ),
        ),
        Spacer(),
        Icon(Icons.calendar_today),
        k16Horizontal,
        Icon(Icons.more_vert),
        k16Horizontal,
      ],
    );

    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: appBar,
          body: TabBarView(
            children: [
              TodayView(),
              MyHabitsView(),
            ],
          ),
        ));
  }
}
