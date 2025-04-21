// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'dart:math';

import 'package:events/pages/reserve.dart';
import 'package:flutter/material.dart';
import 'package:events/model/item.dart';
import 'myfavourite.dart';


// ignore: must_be_immutable
class Details extends StatefulWidget {
  Item event;
  Details({required this.event});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Container(
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
          title: Text(
            "hall  details",
            // style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.event.imgPath),
              SizedBox(
                height: 11,
              ),
              Text(
                widget.event.name,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 66,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.event.location,
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.edit_location,
                        size: 30,
                        color: Color.fromARGB(255, 189, 98, 181),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 225,
                  ),
                  Text(
                    "  ${widget.event.price} YR",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.money_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 189, 98, 181),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                        Text(
                widget.event.description,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
                SizedBox(
                    width: 10,
                  ),
              Icon(
                    Icons.not_started,
                    size: 30,
                    color: Color.fromARGB(255, 189, 98, 181),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventForm(),
                    ),
                  );
                },
                child: Text(
                  "حجز",
                  style: TextStyle(
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontSize: 30,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 233, 150, 208)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 140, vertical: 7)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
