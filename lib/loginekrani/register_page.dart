import 'package:aurora_benchmark/loginekrani/auth_service.dart';
import 'package:aurora_benchmark/loginekrani/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailCtrl = TextEditingController();
  final passwdCtrl = TextEditingController();
  final nameCtrl = TextEditingController();

  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
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
              SizedBox(
                height: 30,
              ),
              buildTextField(nameCtrl, 'Adınız'),
              buildTextField(emailCtrl, 'Email Adresiniz'),
              buildTextField(passwdCtrl, 'Şifreniz'),
              ElevatedButton(
                onPressed: () {
                  _authService
                      .createPerson(
                          nameCtrl.text, emailCtrl.text, passwdCtrl.text)
                      .then((value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage())));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF00b1b1)),
                ),
                child: const Text(
                  'Kayıt Ol',
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              )
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
