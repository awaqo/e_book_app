import 'package:e_book_app/models/book.dart';
import 'package:e_book_app/screens/home/pages/book_details.dart';
import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';

class TrendingBook extends StatelessWidget {
  const TrendingBook({
    Key? key,
    required this.info,
  }) : super(key: key);

  final BookList info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, BookDetail.nameRoute);
          },
          child: Container(
            margin: EdgeInsets.only(top: 12, right: 20),
            height: 160,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: AssetImage(info.imageUrl),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          info.writers,
          style: medium12.copyWith(color: slate400Color),
        ),
        Text(
          info.titleBook,
          style: semiBold14.copyWith(color: slate700Color),
        ),
      ],
    );
  }
}
