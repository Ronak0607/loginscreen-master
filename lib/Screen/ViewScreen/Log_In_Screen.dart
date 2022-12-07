import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginscreen/Firebase/Firebase.dart';
import 'package:loginscreen/Screen/Controller/HomeController.dart';
import 'package:loginscreen/Screen/ViewScreen/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  homeController Controller = Get.put(homeController());

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: txtEmail,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Email',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: txtPassword,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Icon(
                    Icons.lock,
                    size: 30,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not A User? "),
                TextButton(
                    onPressed: () {
                      Get.toNamed('signup');
                    },
                    child: Text("Sign Up",style: TextStyle(color: Colors.green),))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: ElevatedButton(
              onPressed: () async {
                String msg = await logIn(txtEmail.text, txtPassword.text);

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("${msg}"),
                ));

                if (msg == "Success") {
                  Get.offNamed('home');
                }
              },
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), backgroundColor: Colors.green),
              child: Icon(
                Icons.navigate_next_rounded,
                size: 60,
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
