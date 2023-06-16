import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/HomePages/homepage.dart';

class BtnNavBar extends StatefulWidget {

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BtnNavBar> {
  int _currentIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    _pages = [
      homepage(),
    ];
    super.initState();
  }
int selectPage =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        // color: Colors.transparent,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceAround, //supaya untuk memberikan jarak antar tombol
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    selectPage = 0;
                  });
                },
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                  color: Colors.black,
                ), //Menambahkan ikon tombol Home
              ), //Menambahkan tombol
              //ikon tombol home
              IconButton(
                onPressed: () {
                  setState(() {
                    selectPage = 1;
                  });
                },
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                  color: Colors.black,
                ), //Menambahkan ikon tombol Home
              ), //Menambahkan tombol
              //ikon tombol home
              IconButton(
                onPressed: () {
                  setState(() {
                    selectPage = 2;
                  });
                },
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                  color: Colors.black,
                ), //Menambahkan ikon tombol Home
              ), //Menambahkan tombol
              //ikon tombol home
              IconButton(
                onPressed: () {
                  setState(() {
                    selectPage = 3;
                  });
                },
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                  color: Colors.black,
                ), //Menambahkan ikon tombol Home
              ), //Menambahkan tombol
              //ikon tombol home
              IconButton(
                onPressed: () {
                  setState(() {
                    selectPage = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.black,
                ), //Menambahkan ikon tombol Setting
              ), //Menambahkan tombol
            ],
          ),
        )
        //menambah tombol home dan tombol setting
);
}
}