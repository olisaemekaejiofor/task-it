import 'package:flutter/material.dart';
import 'package:task_it/helpers/fonts.dart';
import 'package:task_it/helpers/responsive.dart';

class SliderPage extends StatelessWidget {
  final String description1;
  final String description2;
  final String image;

  SliderPage({this.description1, this.description2, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage(image),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 10)),
          Column(
            children: [
              Text(
                description1,
                style: TextStyle(
                  fontSize: SizeConfig.textSize(context, 3.5),
                  fontFamily: bl,
                ),
              ),
              Text(
                description2,
                style: TextStyle(
                  fontSize: SizeConfig.textSize(context, 3.5),
                  fontFamily: bl,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
