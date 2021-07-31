import 'package:flutter/material.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Members"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add member',
        child: const Icon(Icons.group_add),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            title: const Text("Nsengimana Veda"),
            subtitle: const Text("078480215"),
            trailing: const Icon(Icons.more_vert),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            title: const Text("Mr Norbert"),
            subtitle: const Text("078480215"),
            trailing: const Icon(Icons.more_vert),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            title: const Text("Edward Ruti"),
            subtitle: const Text("078480215"),
            trailing: const Icon(Icons.more_vert),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            title: const Text("Kanuma Evode"),
            subtitle: const Text("078480215"),
            trailing: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
