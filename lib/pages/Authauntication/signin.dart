import 'package:flutter/material.dart';
import 'package:save/pages/admin/home.dart';
import 'package:save/pages/member/home.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
              const Text(
                "Logo",
                style: TextStyle(fontSize: 32),
              ),
              Expanded(
                child: Container(),
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
                      onLongPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (contex) {
                          return const HomeMemberPage();
                        }));
                      },
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (contex) {
                          return const HomeAdminPage();
                        }));
                      },
                      child: const Text("Login"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
