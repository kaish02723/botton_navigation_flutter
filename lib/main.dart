import 'package:button_navigation/HomePage.dart';
import 'package:button_navigation/MusicPage.dart';
import 'package:button_navigation/SharePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ButtonNavigation(),
  ));
}

class ButtonNavigation extends StatefulWidget {
  const ButtonNavigation({super.key});

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  var myIndex = 0;
  List<Widget> widgetsList=[
    HomePage(),
    MusicPage(),
    SharePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottonNavigaion"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
          selectedItemColor: Colors.purple,
          type: BottomNavigationBarType.fixed,
          currentIndex: myIndex,
          onTap: (value) {
            setState(() {
              myIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Badge(backgroundColor: Colors.green,label: Text("99+"), child: Icon(Icons.home)), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note), label: "Music"),
            BottomNavigationBarItem(icon: Badge(backgroundColor: Colors.green,label: Text("2"), child: Icon(Icons.share)), label: "Share")
          ]),
      body: Center(
        child: widgetsList[myIndex],
      ),
    );
  }
}
