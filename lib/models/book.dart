class BookList {
  String imageUrl;
  String writers;
  String titleBook;
  String rating;
  String numPages;
  String descBook;

  BookList({
    required this.imageUrl,
    required this.writers,
    required this.titleBook,
    required this.rating,
    required this.numPages,
    required this.descBook,
  });
}

List<BookList> bookList = [
  BookList(
    imageUrl: 'assets/images/trendingnow_1.png',
    writers: 'Guy Kawasaki',
    titleBook: 'Enchantment',
    rating: '4.8',
    numPages: '180',
    descBook: 'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.',
  ),
  BookList(
    imageUrl: 'assets/images/trendingnow_2.png',
    writers: 'Aaron Mahnke',
    titleBook: 'Lore',
    rating: '4.5',
    numPages: '217',
    descBook: 'Captivating stories of the places where human evil has left a nefarious mark, featuring stories from the podcast Lore—now a streaming television series—including “Echoes,” “Withering Heights,” and “Behind Closed Doors” as well as rare material.',
  ),
  BookList(
    imageUrl: 'assets/images/trendingnow_3.jpg',
    writers: 'Spencer Johnson, M.D',
    titleBook: 'Who Moved My Cheese',
    rating: '4.9',
    numPages: '143',
    descBook: 'A timeless business classic, Who Moved My Cheese? uses a simple parable to reveal profound truths about dealing with change so that you can enjoy less stress and more success in your work and in your life.',
  ),
];
