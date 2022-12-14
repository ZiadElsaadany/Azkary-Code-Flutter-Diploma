import 'package:flutter/material.dart';

import '../azkar/azkar_screen.dart';
import '../sebha/sebha_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=  0 ;

  List<Widget> screens = [AzkarScreen( ), SebhaScreen()]  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: screens[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar (
        backgroundColor: Colors.black,
        currentIndex:currentIndex,
        onTap: ( index ) {
          currentIndex = index;
          setState(() {});
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'azkar') ,
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'sebha'),
        ],
      ),
    );
  }
}