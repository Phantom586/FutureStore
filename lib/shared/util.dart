import 'dart:math';

class Utilities {
  static String generateRandomString() {
    final random = Random();
    const availableChars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    final randomString = List.generate(
            6, (index) => availableChars[random.nextInt(availableChars.length)])
        .join();
    return randomString;
  }
}
