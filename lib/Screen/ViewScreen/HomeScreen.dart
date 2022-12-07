import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginscreen/Firebase/Firebase.dart';
import 'package:loginscreen/Screen/Controller/HomeController.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  homeController Controller = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(actions: [
      IconButton(onPressed: (){

        logout();
        Get.offNamed('login');
      }, icon: Icon(Icons.logout))
    ]),body: Center(child: Text("Hello")),));
  }
}
