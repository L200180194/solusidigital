import 'package:flutter/material.dart';
import 'package:solusidigital/page/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solusidigital/providers/news_provider.dart';

import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => NewsProvider(),
      child: ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const HomeScreen());
        },
      ),
    );
  }
}
