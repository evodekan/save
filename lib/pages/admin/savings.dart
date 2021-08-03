import 'package:flutter/material.dart';
import 'package:save/models/member.dart';

class SavingsPage extends StatefulWidget {
  const SavingsPage({Key? key}) : super(key: key);

  @override
  _SavingsPageState createState() => _SavingsPageState();
}

List<Member> members = [
  Member("Evode", "0783832990"),
  Member("Evode", "0783832990"),
  Member("Evode", "0783832990"),
  Member("Evode", "0783832990"),
  Member("Evode", "0783832990"),
  Member("Evode", "0783832990"),
  Member("Evode", "0783832990"),
  Member("Evode", "0783832990"),
  Member("Evode", "0783832990")
];

class _SavingsPageState extends State<SavingsPage> {
  final List<Widget> _loansWidgets = [
    ListView.builder(
      itemCount: members.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
          title: Text(members.elementAt(index).names),
          subtitle: Text(members[index].phone),
          trailing: const Icon(Icons.more_vert),
        );
      },
    ),
    ListView.builder(
      itemCount: members.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
          title: Text(members.elementAt(index).names),
          subtitle: Text(members[index].phone),
          trailing: const Icon(Icons.more_vert),
        );
      },
    ),
    ListView.builder(
      itemCount: members.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
          title: Text(members.elementAt(index).names),
          subtitle: Text(members[index].phone),
          trailing: const Icon(Icons.more_vert),
        );
      },
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Material(
              elevation: 3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Savings",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const TabBar(
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontSize: 16,
                    ),
                    tabs: [
                      Tab(
                        text: "All",
                      ),
                      Tab(
                        text: "Paid",
                      ),
                      Tab(
                        text: "Unpaid",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              child: TabBarView(
                children: _loansWidgets,
              ),
            )
          ],
        ),
      ),
    );
  }
}
