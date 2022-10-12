import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shop/components/auth_form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(215, 117, 255, .5),
                  Color.fromRGBO(255, 188, 177, .9)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 70.0,
                  ),
                  // Cascade operator .. permite adicionar em cascata a uma lista, exemplo no fim do cód.
                  transform: Matrix4.rotationZ(-8 * pi / 180)..translate(-10.0),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red[700],
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 8.0,
                          color: Colors.black26,
                          offset: Offset(0, 2)),
                    ],
                  ),
                  child: const Text(
                    'My shop',
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'Anton',
                      color: Colors.white,
                    ),
                  ),
                ),
                const AuthForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Cascade operator example
// void main() {
//  List<int> a = [1, 2, 3];
// a.add(4);
// a.add(5);
// a.add(6);

// cascade operator
// a..add(7)..add(8)..add(9);

// print(a)
// }