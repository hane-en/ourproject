// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:events/pages/register.dart';
import 'package:events/shared/contants.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 64,
                ),
                TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Email : ",
                    )),
                const SizedBox(
                  height: 33,
                ),
                TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Password : ",
                    )),
                const SizedBox(
                  height: 33,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign in", style: TextStyle(fontSize: 19),
                  ),
                  style: ButtonStyle(
                    // backgroundColor:Colors.fromARGB(255, 189, 98, 181),
                    // padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    // shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have an account?", style: TextStyle(fontSize: 18)),
                    TextButton(
                      onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()),
                            );
                      },
                      child:
                          Text('sign up', style: TextStyle(color: Colors.black,fontSize: 18))),                 
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
