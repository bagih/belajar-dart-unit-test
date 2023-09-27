import 'package:test/test.dart';

@TestOn('linux | mac-os')
@Tags(['first'])
int sum(int a, int b) => a + b;

void main() {
  group('Group test', () {
    test('sum1', () {
      int result = sum(3, 1);
      expect(result, 4);
    });
    test('sum2', () {
      int result = sum(20, 2);
      expect(result, 22);
    }, testOn: 'windows');
  });
}
