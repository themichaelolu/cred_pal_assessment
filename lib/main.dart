import 'package:cred_pal_assessment/src/features/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, MediaQuery.of(context).size.height),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(fontFamily: 'Avenir'),
        home: const HomeScreen(),
      ),
    );
  }
}
