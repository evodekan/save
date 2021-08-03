import 'package:flutter/material.dart';
import 'package:save/models/member.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  List<Member> members = [
    Member("Evode", "0783832990"),
    Member("Evode", "0783832990"),
    Member("Evode", "0783832990"),
    Member("Evode", "0783832990"),
    Member("Evode", "0783832990"),
    Member("Evode", "0783832990"),
    Member("Evode", "0783832990"),
    Member("Evode", "0783832990"),
    Member("Evode", "0783832990"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Add member',
          child: const Icon(Icons.group_add),
        ),
        body: ListView.builder(
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
        ));
  }
}
