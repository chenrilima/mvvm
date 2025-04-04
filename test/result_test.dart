import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm/core/result/result.dart';

void main() {
  group('Should test Ok Result', () {
    test('Should create a Ok Result', () {
      final result = Result.ok('Ok');
      expect((result as Ok).value, 'Ok');
    });
    test('Should create a Error Result', () {
      final result = Result.error(Exception('Ocorreu um erro...'));
      expect((result as Error).error, isA<Exception>());
    });
    test('Should create a Ok Result with Extension', () {
      final result = 'Ok'.ok();
      expect((result as Ok).value, 'Ok');
    });
    test('Should create a Error Result with Extension', () {
      final result = Exception('Ocorreu um erro...').error();
      expect((result as Error).error, isA<Exception>());
    });
  });
}
