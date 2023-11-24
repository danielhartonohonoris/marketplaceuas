import 'package:flutter/material.dart';
import 'package:test4/main.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('image/marketku.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 50),
            _inputField("Username", usernameController),
            const SizedBox(height: 20),
            _inputField(
              "Password",
              passwordController,
              isPassword: true,
            ),
            const SizedBox(height: 50),
            _loginBtn(),
            const SizedBox(height: 20),
            _extraText(),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 134, 0, 243), width: 2),
          shape: BoxShape.circle),
      child: const Icon(Icons.person,
          color: Color.fromARGB(255, 0, 0, 0), size: 120),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)));

    return TextField(
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username : " + usernameController.text);
        debugPrint("Password : " + passwordController.text);
        //Navigasi Ke Main
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Main()));
      },
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Sign in ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: Color.fromARGB(255, 170, 63, 191),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _extraText() {
    return const Text(
      "Can't access to your account?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
    );
  }
}
