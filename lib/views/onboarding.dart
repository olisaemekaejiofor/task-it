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

  List<Widget> _pages = [
    SliderPage(
      description1: "Task-it helps you to achieve",
      description2: "your daily goals",
      image: fon,
    ),
    SliderPage(
      description1: "Task-it helps you to set",
      description2: "reminders for yout work",
      image: son,
    ),
    SliderPage(
      description1: "Task-it helps you to set daily",
      description2: "tasks all through out the year",
      image: ton,
    ),
  ];

  onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, int index) {
              return _pages[index];
            },
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: onChanged,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _pages.length,
                  (int index) {
                    
                    return  AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 7,
                      width: 20,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          // shape: (index == _currentPage) ? BoxShape.rectangle : BoxShape.circle,
                          color:
                              (index == _currentPage) ? mcolor : Colors.grey) 
                    );
                  },
                ),
              ),
              (_currentPage == (_pages.length - 1))
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    GetStarted()));
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 50,
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                          color: mcolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: bs,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    )
                  : SizedBox(),
              SizedBox(height: SizeConfig.yMargin(context, 10))
            ],
          ),
          Positioned(
              right: 20.0,
              top: 60.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => GetStarted()));
                },
                child: Text(
                  'Skip>>>',
                  style: TextStyle(
                      fontSize: SizeConfig.textSize(context, 4.5),
                      fontFamily: bl,
                      decoration: TextDecoration.underline),
                ),
              ))
        ],
      ),
    );
  }
}
