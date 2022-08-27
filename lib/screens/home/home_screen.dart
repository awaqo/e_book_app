import 'package:e_book_app/models/book.dart';
import 'package:e_book_app/screens/home/components/recent_book.dart';
import 'package:e_book_app/screens/home/components/trending_book.dart';
import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const nameRoute = '/homePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _categories = [
    'All Books',
    'Comic',
    'Manga',
    'Fairy Tales',
  ];

  int _isSelected = 0;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile-pic.png'),
                ),
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Sarah',
                  style: semiBold16.copyWith(color: slate700Color),
                ),
                Text(
                  'Good Morning',
                  style: regular14.copyWith(color: slate400Color),
                ),
              ],
            ),
            Spacer(), //space between
            Image.asset(
              'assets/icons/icon-menu.png',
              width: 18,
            ),
          ],
        ),
      );
    }

    Widget searchField() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Find Your Favorite Book', //placeholder
            hintStyle: medium12.copyWith(color: slate400Color),
            fillColor: slate200Color,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),

            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Icon(Icons.search_rounded, color: whiteColor),
              ),
            ),
          ),
        ),
      );
    }

    Widget recentBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            RecentBook(
                image: 'assets/images/recentbook_1.png', title: 'The Magic'),
            SizedBox(width: 15),
            RecentBook(
                image: 'assets/images/recentbook_2.png', title: 'The Martian'),
          ],
        ),
      );
    }

    Widget categories(int index) {
      return InkWell(
        onTap: () {
          setState(() {
            _isSelected = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: _isSelected == index ? greenColor : Colors.transparent,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            _categories[index],
            style: semiBold14.copyWith(
                color: _isSelected == index ? whiteColor : slate500Color),
          ),
        ),
      );
    }

    Widget listCategories() {
      return SingleChildScrollView(
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _categories
              .asMap()
              .entries
              .map((MapEntry map) => categories(map.key))
              .toList(),
        ),
      );
    }

    Widget trendingBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: bookList
              .asMap()
              .entries
              .map((MapEntry map) => TrendingBook(info: bookList[map.key],))
              .toList(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: slate100Color,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(height: 30),
                searchField(),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Recent Book',
                    style: semiBold16.copyWith(color: slate700Color),
                  ),
                ),
                SizedBox(height: 12),
                recentBook(),
              ],
            ),
          ),
          SizedBox(height: 30),
          listCategories(),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'Trending Now',
              style: semiBold16.copyWith(color: slate700Color),
            ),
          ),
          trendingBook(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
