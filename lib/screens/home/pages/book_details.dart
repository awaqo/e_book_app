import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  static const nameRoute = '/bookDetails';
  const BookDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border(
            bottom: BorderSide(width: 2, color: slate200Color),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left_rounded,
                size: 40,
                color: slate600Color,
              ),
            ),
            Text(
              'Book Details',
              style: semiBold14.copyWith(color: slate700Color),
            ),
            Icon(
              Icons.share_outlined,
              color: slate600Color,
            ),
          ],
        ),
      );
    }

    Widget bookImage() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        height: 270,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/trendingnow_1.png'),
          ),
        ),
      );
    }

    Widget description() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enchantment',
                        style: semiBold20.copyWith(color: slate700Color),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Guy Kawasaki',
                        style: medium14.copyWith(color: slate400Color),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Free Access',
                  style: medium14.copyWith(color: greenColor),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Description',
              style: semiBold14.copyWith(color: slate700Color),
            ),
            SizedBox(height: 6),
            Text(
                'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.',
                style: regular12.copyWith(color: slate500Color),
                ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: slate200Color,
      body: ListView(
        children: [
          Column(
            children: [
              header(),
              bookImage(),
              description(),
            ],
          ),
        ],
      ),
    );
  }
}
