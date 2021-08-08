import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewMemberPage extends StatefulWidget {
  const NewMemberPage({Key? key}) : super(key: key);

  @override
  _NewMemberPageState createState() => _NewMemberPageState();
}

class _NewMemberPageState extends State<NewMemberPage> {
  get items => null;
  String dropdownValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("New Member")),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "First name",
                    hintText: "Your name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    hintText: "Your Number",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "ID Number",
                    hintText: "Your ID",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                DropdownButtonFormField<String>(
                  value: dropdownValue,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Gender"),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Male',
                    'Female',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(vertical: 20),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
