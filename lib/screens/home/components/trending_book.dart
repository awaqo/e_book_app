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
    return Container(
      width: 120,
      margin: EdgeInsets.only(top: 12, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, BookDetail.nameRoute, arguments: {
                'imageUrl': info.imageUrl,
                'writers': info.writers,
                'titleBook': info.titleBook,
                'rating' : info.rating,
                'numPages' : info.numPages,
                'descBook' : info.descBook,
              });
            },
            child: Hero(
              tag: info.imageUrl,
              child: Container(
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
          ),
          SizedBox(height: 8),
          Text(
            info.writers,
            style: medium12.copyWith(color: slate400Color),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            info.titleBook,
            style: semiBold14.copyWith(color: slate700Color),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
