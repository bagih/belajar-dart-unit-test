import 'book.dart';
import 'book_repository.dart';

class BookService {
  BookRepository bookRepository;

  BookService(this.bookRepository);

  void save(String id, String name, int price) {
    if (id.isEmpty || name.isEmpty || price <= 0) {
      throw Exception('invalid data');
    }
    bookRepository.save(Book(id, name, price));
  }

  void update(String id, String name, int price) {
    if (id.isEmpty || name.isEmpty || price <= 0) {
      throw Exception('invalid data');
    }
    Book? book = bookRepository.findById(id);
    if (book == null) {
      throw Exception('book is null');
    } else {
      book.name = name;
      book.price = price;
      bookRepository.update(book);
    }
  }

  Book find(String id) {
    var book = bookRepository.findById(id);
    if (book == null) {
      throw Exception('book is null');
    } else {
      return book;
    }
  }

  void delete(String id) {
    var book = bookRepository.findById(id);
    if (book == null) {
      throw Exception('book is null');
    } else {
      bookRepository.delete(book);
    }
  }
}
