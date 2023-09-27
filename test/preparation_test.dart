import 'package:test/test.dart';

void main() {
  late String data;

  setUp(() {
    data = 'Bagi';
  });

  tearDown(() {
    print(data);
  });

  setUpAll(() {
    print('start all test');
  });

  tearDownAll(() {
    print('all test finished');
  });

  group('string test', () {
    test('string test1', () {
      data = '$data Hartawan';
      expect(data, 'Bagi Hartawan');
    });

    test('string test2', () {
      data = 'Hartawan $data';
      expect(data, equalsIgnoringCase('hartawan bagi'));
    });
  });
}
