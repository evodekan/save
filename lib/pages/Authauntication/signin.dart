import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 70,
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
                labelText: "New Password",
                hintText: "New Password",
                border: OutlineInputBorder(),
              ),
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
                    child: const Text("Login"),
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