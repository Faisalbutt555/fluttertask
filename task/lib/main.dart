import 'package:flutter/material.dart';
import 'package:task/view/firstscreen.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   systemNavigationBarColor:
  //       Colors.pink.withOpacity(0.7), // navigation bar color
  //   statusBarColor: Colors.pink.withOpacity(0.7), // status bar color
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: FirstScreen(),
        ));
  }
}
