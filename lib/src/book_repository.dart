import 'book.dart';

class BookRepository {
  void save(Book book) {
    print('save book');
    throw UnsupportedError('save not yet implemented');
  }

  void update(Book book) {
    print('update book');
    throw UnsupportedError('update not yet implemented');
  }

  void delete(Book book) {
    print('delete book');
    throw UnsupportedError('delete not yet implemented');
  }

  Book findById(String id) {
    print('find by id $id');
    throw UnsupportedError('findById not yet implemented');
  }
}
