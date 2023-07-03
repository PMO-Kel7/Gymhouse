import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget makeDismissible(
        {required BuildContext context, required Widget child}) =>
    GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: child,
      ),
    );

Widget buildSheet(BuildContext context) => makeDismissible(
      context: context,
      child: DraggableScrollableSheet(
        initialChildSize: 0.9,
        minChildSize: 0.5, // mengatur jarak dengan atas
        maxChildSize: 0.9, // mengatur jarak bawah
        builder: (_, controller) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          padding: EdgeInsets.all(14),
          child: ListView(
            controller: controller,
            children: [
              SizedBox(height: 20),
              Text(
                '30 DAYS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'GYM MEMBERSHIP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 0, 0),
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Create a Membership Fit for a Star',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 200,
                height: 500,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 2,
                    ),
                  ),
                ),
                child: Image.asset(
                  'assets/images/membership women.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Complete Access, Maximum Performance Mode\nCraft a Membership Tailored to Your Needs\nTotal Access, Optimal Performance Mode,\nMore Learning with Video Training',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(230, 55),
                    primary: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  onPressed: () async {
                    const url =
                        'https://app.sandbox.midtrans.com/payment-links/gymhouse-pay';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Column(
                    children: [
                      Text(
                        'JOIN NOW',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Rp140.000/Bulan',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );