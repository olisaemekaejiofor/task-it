import 'package:flutter/material.dart';
import 'package:task_it/helpers/colors.dart';
import 'package:task_it/helpers/fonts.dart';
import 'package:task_it/helpers/images.dart';
import 'package:task_it/views/authy.dart';
import 'package:task_it/widgets/slider.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnBoardingPage> {
  int _currentPage = 0;
  String astalavee;

  List<Map<String, String>> data = [
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
                onPageChanged: onChanged,
                itemCount: data.length,
                itemBuilder: (context, index) => SliderPage(
                  description1: data[index]["description1"],
                  description2: data[index]["description2"],
                  image: data[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        data.length,
                        (index) => buildDot(index),
                      ),
                    ),
                    Spacer(flex: 3),
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: mcolor,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Get Started",
                          style: nstyle.copyWith(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 20 : 7,
      decoration: BoxDecoration(
        color: _currentPage == index ? mcolor : Color(0xffD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
