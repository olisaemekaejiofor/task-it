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
      "image": fon,
    },
    {
      "description1": "Task-it helps you to set",
      "description2": "reminders for yout work",
      "image": son,
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
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 50),
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
                        height: 50,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: mcolor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Continue",
                            style: nstyle.copyWith(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return GetStarted();
                                },
                              ),
                            );
                          },
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
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.only(right: 5),
      height: 7,
      width: _currentPage == index ? 25 : 10,
      decoration: BoxDecoration(
        color: _currentPage == index ? mcolor : Color(0xffD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
