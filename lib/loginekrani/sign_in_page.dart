import 'package:aurora_benchmark/loginekrani/auth_service.dart';
import 'package:aurora_benchmark/loginekrani/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController psswdCtrl = TextEditingController();
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/auroraanimation.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/auroralogo.png",
                  fit: BoxFit.cover, width: 350),
              const SizedBox(
                height: 40,
              ),
              buildTextField(emailCtrl, 'Email Adresiniz'),
              buildTextField(psswdCtrl, 'Şifreniz'),
              ElevatedButton(
                onPressed: () {
                  _authService
                      .signIn(emailCtrl.text, psswdCtrl.text)
                      .then((value) => Get.to(AnimationScreen()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF00b1b1)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  child: const Text(
                    'Giriş Yap',
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(RegisterPage());
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF00b1b1)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  child: const Text(
                    'Hesap Oluştur',
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(TextEditingController controller, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: text,
            border: const OutlineInputBorder(),
            fillColor: Colors.white.withOpacity(0.1),
            filled: true),
      ),
    );
  }
}
