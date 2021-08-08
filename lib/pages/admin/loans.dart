import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save/models/member.dart';
import 'package:save/pages/admin/newloan.dart';

class LoansPage extends StatefulWidget {
  const LoansPage({Key? key}) : super(key: key);

  @override
  _LoansPageState createState() => _LoansPageState();
}

class _LoansPageState extends State<LoansPage> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (contex) {
            return const NewLoan();
          }));
        },
        tooltip: 'Add member',
        child: const Icon(Icons.add),
      ),
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
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Interest rate",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "15%",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Total Amount",
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
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Interest",
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
                            ],
                          ),
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
      ),
    );
  }
}
