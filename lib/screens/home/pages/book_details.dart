import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  static const nameRoute = '/bookDetails';
  const BookDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)?.settings.arguments as Map;

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
      return Hero(
        tag: data['imageUrl'],
        child: Container(
          margin: EdgeInsets.only(top: 40),
          height: 270,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(data['imageUrl']),
            ),
          ),
        ),
      );
    }

    Widget infoDescription() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: slate100Color,
          borderRadius: BorderRadius.circular(9),
        ),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Rating',
                    style: medium12.copyWith(color: slate500Color),
                  ),
                  Text(
                    data['rating'],
                    style: semiBold14.copyWith(color: slate600Color),
                  ),
                ],
              ),
              VerticalDivider(
                color: slate600Color,
                thickness: 1,
              ),
              Column(
                children: [
                  Text(
                    'Number of Pages',
                    style: medium12.copyWith(color: slate500Color),
                  ),
                  Text(
                    data['numPages'],
                    style: semiBold14.copyWith(color: slate600Color),
                  ),
                ],
              ),
              VerticalDivider(
                color: slate400Color,
                thickness: 1,
              ),
              Column(
                children: [
                  Text(
                    'Language',
                    style: medium12.copyWith(color: slate500Color),
                  ),
                  Text(
                    'ENG',
                    style: semiBold14.copyWith(color: slate600Color),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget saveButton() {
      return Positioned(
        top: 410,
        right: 20,
        child: Container(
          height: 50,
          width: 50,
          padding: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: greenColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset('assets/icons/icon-save.png'),
        ),
      );
    }

    Widget buttonReadNow() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: greenColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            'Read Now',
            style: semiBold20.copyWith(color: whiteColor),
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
                        data['titleBook'],
                        style: semiBold20.copyWith(color: slate700Color),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        data['writers'],
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
              data['descBook'],
              style: regular12.copyWith(color: slate500Color),
            ),
            infoDescription(),
            buttonReadNow(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: slate200Color,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  header(),
                  bookImage(),
                  description(),
                ],
              ),
              saveButton(),
            ],
          ),
        ],
      ),
    );
  }
}
