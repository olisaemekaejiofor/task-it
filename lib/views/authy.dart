import 'package:flutter/material.dart';
import 'package:task_it/helpers/colors.dart';
import 'package:task_it/helpers/fonts.dart';
import 'package:task_it/helpers/images.dart';
import 'package:task_it/helpers/responsive.dart';
import 'package:task_it/widgets/customfield.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(blogo),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 3)),
          Text(
            'Create an account to save all tasks',
            style: TextStyle(
              fontSize: SizeConfig.textSize(context, 4.5),
              fontFamily: bl,
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 8)),
          customField('Email', _email, 'email', TextInputType.emailAddress),
          SizedBox(height: 5),
          conFirmPromo(),
          SizedBox(height: SizeConfig.yMargin(context, 6.5)),
          GestureDetector(
            onTap: () {},
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
        ],
      ),
    );
  }

  bool bval = false;
  void _onChanged(bool newValue) => setState(() {
        bval = newValue;
        if (bval) {
        } else {}
      });

  Widget conFirmPromo() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        children: [
          Checkbox(value: bval, onChanged: _onChanged),
          Container(
            width: SizeConfig.xMargin(context,70),
           // height: 30,
           // color: Colors.red,
            child: RichText(
              text: TextSpan(
                text: 'I will like to receive ',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    height: 1.5,
                    fontWeight: FontWeight.normal,
                    fontFamily: bs),
                children: <TextSpan>[
                  TextSpan(
                    text: 'news ',
                    style: TextStyle(
                        color: mcolor,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: bs),
                  ),
                  TextSpan(
                    text: 'and ',
                    style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.normal,
                        fontFamily: bs),
                  ),
                  TextSpan(
                    text: 'promotions ',
                    style: TextStyle(
                        color: mcolor,
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.normal,
                        fontFamily: bs),
                  ),
                  TextSpan(
                    text: 'via email from TASK-IT',
                    style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.normal,
                        fontFamily: bs),
                  ),
                ],
              ),
              textAlign: TextAlign.start,
            
            ),
          ),
        ],
      ),
    );
  }
}
