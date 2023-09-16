import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration:const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/images/login_image.png',))),
                ),
                Positioned(
                  top: 180,
                  child: Container(
                    decoration:const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        
                      ]),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
