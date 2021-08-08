import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SavingHistory extends StatefulWidget {
  const SavingHistory({Key? key}) : super(key: key);

  @override
  _SavingHistoryState createState() => _SavingHistoryState();
}

class _SavingHistoryState extends State<SavingHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Goals",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "50,000 RWF",
                          style: TextStyle(
                            fontSize: 20,
                          ),
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
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "240,000 RWF",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 1,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "260,000 RWF",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "History of July",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Flexible(
            child: ListView.builder(
              itemCount: 16,
              itemBuilder: (ctx, index) {
                return const ListTile(
                  title: Text("Monday, 21st July"),
                  subtitle: Text("8,000 RWF"),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
