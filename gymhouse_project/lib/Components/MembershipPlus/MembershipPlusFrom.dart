import 'package:firebase_auth/firebase_auth.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:gymhouse_project/utils/constant.dart';
import 'package:video_player/video_player.dart';

class MembershipPlusForm extends StatefulWidget {
  MembershipPlusForm({super.key});

  @override
  _MembershipPlusFormState createState() => _MembershipPlusFormState();
}

class _MembershipPlusFormState extends State<MembershipPlusForm> {
  late FlickManager flickManager1;
  late FlickManager flickManager2;
  late FlickManager flickManager3;
  late FlickManager flickManager4;

  @override
  void initState() {
    super.initState();
    flickManager1 = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            'https://cloud.punisher.eu.org/1:/10_min_Morning_Yoga_Stretch_for_Beginners_Energy_Boost__T41mYCmtWls_136.mp4'),
      ),
    );
    flickManager2 = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            'https://cloud.punisher.eu.org/1:/CARDIO%20WORKOUT%20FOR%20BEGINNERS%20From%20Home%20In%2010%20Minutes%20_%20Lockdown%20Workout%20No%20Equipment%20_%20HealthifyMe.mp4'),
      ),
    );
    flickManager3 = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            'https://861520855.tapecontent.net/radosgw/XorKarKzpQtD6yg/stDGwLuQB3TPGAISf2t3jQL_okfsKurLjvC234DdLlbxHQZq5FosttPZnlNenmiS6PxdKf2KvK5QWfa6naZ_xPOqEHWiyIPc260YKd5qxMiqKwzmdRMjbn5f5ZqobuPSLs4lmmybbS7XWp-lXXTrIZmnmJHs5MwZgib6qyOvA-G0Nz5i2pPUK65TFW7ldg6COZMP9OPWhpfP6PG44wU95_HJrtfSTJ3zRQtgdLqSX5wh3Llb_IINMIWQJ8bLhG7PM9SiyTnm62dlpknqCtvKqWz8dibZ_GM8s-ZcnpCdDMvieY1wu7p-tGfupWbpWxnonDTo6d1IIG4ZSsrsfzVST29iJaofNsGCQapugQ/10_Mins_Easy_Weight_Loss_Zumba_Dance_Workout_For_Beginn_F4BJst5d.mp4?stream=1'),
      ),
    );
    flickManager4 = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            'https://908357361.tapecontent.net/radosgw/VoZPdrMOpWHKJ9x/4JIWr-lP0fJsRrqmpQjrP-ucpC492bptvtM4OdWp7A863v-Dryhx6S1F-DZm29cndIQvs_2b3y6DpM-GaX1YBpG36fW7KWnYjt4DqPpNgVYQzL2lL2_pWTBQYJ0do5OdODCjQlInDy1DCBUXiRXbFZqgNp43DKHvNoUNMfE8sdZ4rJiw7rZaQNNAqMe8P--uf20xBcJKdO2qSK-4rE4zvaS43dp774DKJ8iGr5oK4xfPABr_S9854IWtCVSRFvFQi6bpsa9kcPZL8FO8hPsIwk6BYnF40eyotZ8n7C4dDZ3fUr6axlx4LP9d2aI0qTCMibpc9posJ9w1fjI5SSzTgQACANz12GBTiwbgdQ/15_Min_Intense_HIIT_Workout_For_Fat_Burn_Cardio_No_Equi_J212vz33.mp4?stream=1'),
      ),
    );
  }

  @override
  void dispose() {
    flickManager1.dispose();
    flickManager2.dispose();
    flickManager3.dispose();
    flickManager4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsetsDirectional.all(20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    " Start Your\n Exclusive\n Training here",
                    style: mTitleStyleMembership,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    " Yoga Lesson",
                    style: mTitleStyleYoga,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: FlickVideoPlayer(flickManager: flickManager1),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    " Cardio Workout Lessons",
                    style: mTitleStyleYoga,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: FlickVideoPlayer(flickManager: flickManager2),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    " Zumba Lesson",
                    style: mTitleStyleYoga,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: FlickVideoPlayer(flickManager: flickManager3),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    " High Intensity Workout ",
                    style: mTitleStyleYoga,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: FlickVideoPlayer(flickManager: flickManager4),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
