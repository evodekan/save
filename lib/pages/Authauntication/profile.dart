import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  get items => null;
  String dropdownValue = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: SafeArea(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.camera_alt,
                            size: 24,
                            color: Colors.green,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Your names",
                      hintText: "Your names",
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
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "New Password",
                      hintText: "New Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Cornfirm Password",
                      hintText: "Confirm Password",
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
          ),
        ));
  }
}
