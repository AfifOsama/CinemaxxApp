import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cinemaxx/ui/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinemaxx',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: AnimatedSplashScreen(
        splash: Column(
          children: [
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/1024.png',
                  )),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'Cinemaxx',
                  style: TextStyle(
                    fontFamily: "Roboto Black",
                  ),
                ),
              ),
            ),
          ],
        ),
        duration: 1000,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: const MainPage(),
        centered: true,
      ),
    );
  }
}
