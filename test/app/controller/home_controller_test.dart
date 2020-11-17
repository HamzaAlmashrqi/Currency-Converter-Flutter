import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  final homeController = HomeController(fromText: fromText, toText: toText);

  test('deve converter de real para dolar', () {
    fromText.text = '2.0';
    homeController.convert();
    expect(toText.text, '0.36');
  });
}