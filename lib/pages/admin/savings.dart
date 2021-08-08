import 'package:flutter/material.dart';

class SavingsPage extends StatefulWidget {
  const SavingsPage({Key? key}) : super(key: key);

  @override
  _SavingsPageState createState() => _SavingsPageState();
}

class _SavingsPageState extends State<SavingsPage> {
  final List<Widget> _loansWidgets = [
    ListView.builder(
      itemCount: 17,
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
          title: Text("Kanuma Evode"),
          subtitle: Text("87,500 RWF"),
          trailing: const Icon(Icons.more_vert),
        );
      },
    ),
    ListView.builder(
      itemCount: 17,
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
          title: Text("Kanuma Evode"),
          subtitle: Text("87,500 RWF"),
          trailing: const Icon(Icons.more_vert),
        );
      },
    ),
    ListView.builder(
      itemCount: 17,
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
          title: Text("Kanuma Evode"),
          subtitle: Text("87,500 RWF"),
          trailing: const Icon(Icons.more_vert),
        );
      },
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Material(
                elevation: 3,
                child: Column(
                  children: [
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
      ),
    );
  }
}
