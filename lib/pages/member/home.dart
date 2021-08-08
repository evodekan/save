import 'package:flutter/material.dart';

import 'dasboard.dart';
import 'loan.dart';
import 'saving_history.dart';

class HomeMemberPage extends StatefulWidget {
  const HomeMemberPage({Key? key}) : super(key: key);

  @override
  _HomeMemberPageState createState() => _HomeMemberPageState();
}

class _HomeMemberPageState extends State<HomeMemberPage> {
  int _selectedIndex = 0;

  final List<Widget> pages = const [
    DashboardPage(),
    SavingHistory(),
    LoanPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Saving',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Loan',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
