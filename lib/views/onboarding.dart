import 'package:flutter/material.dart';
import 'package:task_it/helpers/colors.dart';
import 'package:task_it/helpers/fonts.dart';
import 'package:task_it/helpers/images.dart';
import 'package:task_it/helpers/responsive.dart';
import 'package:task_it/views/authy.dart';
import 'package:task_it/widgets/slider.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnBoardingPage> {
  int _currentPage = 0;
  String astalavee;
  PageController _controller = PageController();

  List<Map<String, String>> _pages = [
    {
      "description1": "Task-it helps you to achieve",
      "description2": "your daily goals",
      "image": "",
    },
    {
      "description1": "Task-it helps you to set",
      "description2": "reminders for yout work",
      "image": "",
    },
    {
      "description1": "Task-it helps you to set daily",
      "description2": "tasks all through out the year",
      "image": ton,
    }
  ];

  onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemBuilder: (context, index) => SliderPage(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
