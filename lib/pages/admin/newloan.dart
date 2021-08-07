import 'package:flutter/material.dart';

class NewLoan extends StatefulWidget {
  const NewLoan({Key? key}) : super(key: key);

  @override
  _NewLoanState createState() => _NewLoanState();
}

class _NewLoanState extends State<NewLoan> {
  get items => null;
  String dropdownValue = '15%';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("New Loan")),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Your names",
                    hintText: "Your names",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    hintText: "Your Phone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Amount",
                    hintText: "Amount",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                DropdownButtonFormField<String>(
                  value: dropdownValue,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      labelText: "Interest rate"),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    '15%',
                    '25%',
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
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "PayBack Period",
                    hintText: "PayBack Period",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Reason",
                      hintText: "Reason",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      )),
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
