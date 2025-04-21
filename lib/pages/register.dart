// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:events/pages/login.dart';
import 'package:events/shared/contants.dart';
import 'package:flutter/material.dart';

import 'myfavourite.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            actions: [
              Container(
                //padding:EdgeInsets.all(12) ,

                margin: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => favourite(),
                              ),
                            );
                          },
                          icon: Icon(Icons.star),
                          padding: const EdgeInsets.only(right: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
            backgroundColor: const Color.fromARGB(255, 189, 98, 181),
            title: Text("Home"),
          ),
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: decorationTextfield.copyWith(
                        hintText: "Enter Your username : ",
                      )),
                  const SizedBox(
                    height: 33,
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
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
