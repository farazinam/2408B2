import 'package:flutter/material.dart';

class BotmNavBar extends StatefulWidget {
  const BotmNavBar({super.key});

  @override
  State<BotmNavBar> createState() => _BotmNavBarState();
}

class _BotmNavBarState extends State<BotmNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home"),),  //0
    Center(child: Text("About"),),  //1
    Center(child: Text("Contact"),),  //2
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Navigation Bar"),
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        BottomNavigationBarItem(icon: Icon(Icons.contact_mail_outlined), label: 'Contact'),
      ],
      ),

    );
  }
}