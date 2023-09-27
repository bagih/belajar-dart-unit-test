import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name';
}

void main() {
  test('matcher test', () {
    var response = sayHello('Bagih');
    expect(response, endsWith('Bagih'));
    expect(response, startsWith('Hello'));
    expect(response, equalsIgnoringCase('hello bagih'));
  }, tags: 'second');
}
