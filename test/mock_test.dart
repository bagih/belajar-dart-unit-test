import 'package:belajar_dart_unit_test/book_library.dart';
import 'package:belajar_dart_unit_test/src/book_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_test.mocks.dart';

void main() {
  group('BookService', () {
    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test('save new book must success', () {
      bookService.save('1', 'Dart keren', 696969);
      verify(bookRepository.save(Book('1', 'Dart keren', 696969))).called(1);
    });

    test('find book by id', () {
      when(bookRepository.findById('1'))
          .thenReturn(Book('1', 'Dart keren', 696969));

      var book = bookService.find('1');
      expect(book, equals(Book('1', 'Dart keren', 696969)));

      verify(bookRepository.findById('1')).called(1);
    });

    test('test argument matcher', () {
      when(bookRepository.findById(argThat(startsWith('rem'))))
          .thenReturn(Book('rembo123', 'Rembo tandem', 696969));
      var book = bookService.find('rembo123');
      expect(book, equals(Book('rembo123', 'Rembo tandem', 696969)));

      verify(bookRepository.findById('rembo123')).called(1);
    });
  });
}
