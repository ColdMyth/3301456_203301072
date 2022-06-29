import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:aurora_benchmark/anasayfa/mainanasayfa.dart';
import 'package:aurora_benchmark/loginekrani/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          appId: '3fd9603f-9de1-48dd-b6cc-2477045cb4b7',
          apiKey: 'AIzaSyDomHexZP9v7c_K_qgfpMpUpok3jQYVkQg',
          messagingSenderId: '873177678924',
          projectId: 'aurorabenchmark-51537'));

  runApp(const MyApp());
}

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          SizedBox(
            child: Image.asset('images/auroralogo.png'),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF004141),
      nextScreen: Mainanasayfa(),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.topToBottom,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        color: Colors.cyan,
        debugShowCheckedModeBanner: false,
        home: SignInPage());
  }
}
