import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: slate200Color),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      margin: EdgeInsets.only(top: 0),
      child: Row(
        children: [
          Image.asset(
            image, 
            width: 100,
          ),
          SizedBox(width: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: semiBold14.copyWith(color: slate700Color),
              ),
              CircularPercentIndicator(
                reverse: true,
                radius: 25,
                lineWidth: 8,
                animation: true,
                percent: 0.5,
                progressColor: greenColor,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              Text(
                '50% Completed',
                style: medium12.copyWith(color: slate400Color),
              )
            ],
          ),
        ],
      ),
    );
  }
}
