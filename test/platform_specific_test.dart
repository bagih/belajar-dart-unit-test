import 'package:test/test.dart';

void main() {
  test('test1', () {
    expect(1 + 1, 2);
  }, onPlatform: {'linux': Skip('tesnya di skip di linux')});

  test('test2', () {
    expect(1 + 2, 3);
  });
}
