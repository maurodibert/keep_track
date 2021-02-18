import 'package:flutter/material.dart';
import 'package:keep_track/core/services/database.dart';
import 'package:keep_track/ui/screens/home_screen/home_screen.dart';
import 'package:keep_track/ui/screens/home_screen/home_viewmodel.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // DBManager().deleteDB();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeViewModel>(create: (_) => HomeViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/': (context) => HomeScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
