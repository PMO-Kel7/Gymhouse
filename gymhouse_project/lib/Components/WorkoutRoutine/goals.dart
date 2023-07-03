import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class goals extends StatefulWidget {
  const goals({super.key});

  @override
  State<goals> createState() => _goalsState();
}

class _goalsState extends State<goals> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime dat, DateTime focusedDay) {
    setState(() {
      today = dat;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0, // mengatur ketinggian
          title: Text('Goals',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 25.0,
              )),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            iconSize: 25.0,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                kalender(),
                SizedBox(
                  height: 40,
                ),
                button(),
              ],
            )));
  }

  Widget kalender() {
    return Column(
      children: [
        Container(
          child: TableCalendar(
              locale: "en_US",
              rowHeight: 43,
              headerStyle:
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              onDaySelected: _onDaySelected),
        ),
      ],
    );
  }

  Widget button() {
    return Column(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Selected Day",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10), // Menambahkan jarak sebesar 10 pixel
              Text(
                today.toString().split(" ")[0],
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: Size(230, 55),
              primary: const Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () {},
            child: Column(
              children: [
                Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
