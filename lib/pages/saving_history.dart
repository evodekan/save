import 'package:flutter/material.dart';

class SavingHistory extends StatefulWidget {
  const SavingHistory({Key? key}) : super(key: key);

  @override
  _SavingHistoryState createState() => _SavingHistoryState();
}

class _SavingHistoryState extends State<SavingHistory> {
  get blue => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            //height: 250,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Goals",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    Text(
                      "50000",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Saved",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    Text(
                      "240000",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "260000",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
