import 'package:flutter/material.dart';
import 'package:loginscreen/Screen/ViewScreen/Log_In_Screen.dart';

import 'Sign_Up_Screen.dart';

class tabbarScreen extends StatefulWidget {
  const tabbarScreen({Key? key}) : super(key: key);

  @override
  State<tabbarScreen> createState() => _tabbarScreenState();
}

class _tabbarScreenState extends State<tabbarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Container(
              height: 420,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              width: double.infinity,
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: TabBar(
                    tabs: [
                      Tab(text: 'LOGIN',),
                      Tab(text: 'SIGNUP',),
                    ],
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.green,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // AppBar
                  body: TabBarView(
                    children: [LoginScreen(), SignUpScreen()],
                  ), // TabBarView
                ), // Scaffold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
