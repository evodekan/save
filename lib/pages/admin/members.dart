import 'package:flutter/material.dart';
import 'package:save/models/member.dart';
import 'package:save/pages/Authauntication/profile.dart';
import 'package:save/pages/admin/new_member.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  List<Member> members = [
    Member("Evode Kanuma", "0783832990"),
    Member("Evode Kanuma", "0783832990"),
    Member("Evode Kanuma", "0783832990"),
    Member("Evode Kanuma", "0783832990"),
    Member("Evode Kanuma", "0783832990"),
    Member("Evode Kanuma", "0783832990"),
    Member("Evode Kanuma", "0783832990"),
    Member("Evode Kanuma", "0783832990"),
    Member("Evode Kanuma", "0783832990"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (contex) {
              return const NewMemberPage();
            }));
          },
          tooltip: 'Add member',
          child: const Icon(Icons.group_add),
        ),
        body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (contex) {
                  return const ProfilePage();
                }));
              },
              leading: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
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
