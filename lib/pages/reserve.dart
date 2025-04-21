import 'package:flutter/material.dart';
import 'myfavourite.dart';

class EventForm extends StatefulWidget {
  const EventForm({Key? key}) : super(key: key);

  @override
  _EventFormState createState() => _EventFormState();
}

class _EventFormState extends State<EventForm> {
  // Controllers to handle input values
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _paymentMethodController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  // Function to handle form submission
  void _submitForm() {
    // Checking if all fields are filled
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _paymentMethodController.text.isEmpty ||
        _dateController.text.isEmpty) {
      // If any field is empty, show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields!')),
      );
    } else {
      // Otherwise, show a success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form submitted successfully!')),
      );
    }
  }

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
          title: Text("Reserve"),
        ),
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: SingleChildScrollView( // Added SingleChildScrollView for scrolling
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 64),
                // Name Field
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),

                // Email Field
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),

                // Payment Method Field
                TextField(
                  controller: _paymentMethodController,
                  decoration: InputDecoration(
                    hintText: "Enter Payment Method",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),

                // Date Field (optional)
                TextField(
                  controller: _dateController,
                  //  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    hintText: "Enter Date",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 33),

                // Submit Button
                ElevatedButton(
                  onPressed: _submitForm,
                  child: Text(
                    "Reserve",
                    style: TextStyle(fontSize: 16,color: Colors.black),
                  ),
                   style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 233, 150, 208)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 140, vertical: 12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
