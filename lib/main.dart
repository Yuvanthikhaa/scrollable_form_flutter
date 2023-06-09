import 'package:flutter/material.dart';

void main() {
  runApp(const Formu());
}

class Formu extends StatefulWidget {
  const Formu({Key? key}) : super(key: key);

  @override
  State<Formu> createState() => _FormuState();
}

class _FormuState extends State<Formu> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "form with some constraints ig",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            //controller: controller,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(bottom: 250)),
                Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: const Icon(Icons.person),
                            hintText: 'field1',
                            labelText: 'field1',
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.length < 10 ||
                                value.isEmpty) {
                              return 'insufficient characters';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: const Icon(Icons.person),
                            hintText: 'field2',
                            labelText: 'field2',
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.length < 10 ||
                                value.isEmpty) {
                              return 'insufficient characters';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: const Icon(Icons.person),
                            hintText: 'field3',
                            labelText: 'field3',
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.length < 10 ||
                                value.isEmpty) {
                              return 'insufficient characters';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: const Icon(Icons.person),
                            hintText: 'field4',
                            labelText: 'field4',
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.length < 10 ||
                                value.isEmpty) {
                              return 'insufficient characters';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: const Icon(Icons.person),
                            hintText: 'field5',
                            labelText: 'field5',
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.length < 10 ||
                                value.isEmpty) {
                              return 'insufficient characters';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text(' Submitting')),
                                );
                              }
                            },
                            child: const Text('Submit'),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black)),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 250))
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
