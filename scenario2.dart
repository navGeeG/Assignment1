abstract class Book {
  String title;
  double price;

  Book(this.title, this.price);

  // Abstract method (no implementation here)
  String getCategory();

  // Concrete method (shared behavior)
  void displayInfo() {
    print('Title: $title');
    print('Price: \$${price}');
    print('Category: ${getCategory()}');
  }
}
class FictionBook extends Book {
  FictionBook(String title, double price) : super(title, price);

  @override
  String getCategory() {
    return 'Fiction';
  }
}
class NonFictionBook extends Book {
  NonFictionBook(String title, double price) : super(title, price);

  @override
  String getCategory() {
    return 'Non-Fiction';
  }
}
void main() {
  Book book1 = FictionBook('The Silent Patient', 15.99);
  Book book2 = NonFictionBook('Atomic Habits', 18.50);

  book1.displayInfo();
  print('---');
  book2.displayInfo();
}
