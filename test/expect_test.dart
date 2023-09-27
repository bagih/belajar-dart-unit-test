import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name';
}

void main() {
  test('expect test', () {
    var response = sayHello('Bagih');
    expect(response, 'Hello Bagih');
  });
}
