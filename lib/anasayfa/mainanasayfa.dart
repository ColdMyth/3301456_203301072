import 'package:aurora_benchmark/profiles/profile.dart';
import 'package:flutter/material.dart';

import '../notes/notlar_page.dart';
import 'anasayfa.dart';

class Mainanasayfa extends StatefulWidget {
  const Mainanasayfa({Key? key}) : super(key: key);

  @override
  State<Mainanasayfa> createState() => _MainanasayfaState();
}

class _MainanasayfaState extends State<Mainanasayfa> {
  int currentIndex = 0;
  final screens = [
    Anasayfa(),
    NotesPage(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),

      //Alttaki NavigationBar kısmı

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF004141),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          iconSize: 30,
          selectedFontSize: 15,
          unselectedFontSize: 13,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Anasayfa',
              backgroundColor: const Color(0xFF004141),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Notlar',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profilim',
              backgroundColor: Colors.green,
            ),
          ]),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
    );
  }
}
