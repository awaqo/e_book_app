class BookList {
  String imageUrl;
  String writers;
  String titleBook;

  BookList({
    required this.imageUrl,
    required this.writers,
    required this.titleBook,
  });
}

List<BookList> bookList = [
  BookList(
    imageUrl: 'assets/images/trendingnow_1.png',
    writers: 'Guy Kawasaki',
    titleBook: 'Enchantment',
  ),
  BookList(
    imageUrl: 'assets/images/trendingnow_2.png',
    writers: 'Aaron Mahnke',
    titleBook: 'Lore',
  ),
  BookList(
    imageUrl: 'assets/images/trendingnow_3.png',
    writers: 'Spencer Johnson, M.D',
    titleBook: 'Who Moved My Cheese',
  ),
];
