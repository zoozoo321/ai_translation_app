import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  await dotenv.load(fileName: 'assets/config/.env');

  String? apiKey = dotenv.env['OPENAI_API_KEY'];
  test('api key load 확인',
      () => {expect('asdasdasdsadsdasd', isNot(equals(apiKey)))});
}
