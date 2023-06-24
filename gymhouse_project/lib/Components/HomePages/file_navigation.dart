import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/HomePages/homepage.dart';
import 'package:gymhouse_project/Components/HomePages/profile.dart';

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
      profile(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF050522),
      body: Stack(
        children: [
          _pages[_currentIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60, // Tinggi Bottom Navigation Bar yang diperpanjang
                decoration: const BoxDecoration(
                  color: Color(0xFF050522),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      icon: Icon(
                        Icons.calendar_month_sharp,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      icon: Icon(
                        Icons.home_filled,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      icon: Image.asset(
                        'assets/icons/icon _gym weights bold_.png',
                        width: 30,
                        height: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
