import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:mint_app/data/service/twilio_service.dart';

class TwillioServiceImpl implements TwillioService {
  @override
  Future<String> sendTiwllioSms(String userPhoneNumber) async {
    try {
      final credentials = dotenv.get('twilioAccountToken');

      final bytes = utf8.encode(credentials);

      final base64Str = base64.encode(bytes);
      final url = dotenv.get('twilioUrl');

      final rng = new Random();
      final code = rng.nextInt(900000) + 100000;

      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Authorization': 'Basic ${base64Str}',
        },
        body: {
          'From': dotenv.get('twilioSenderNumber'),
          'To': userPhoneNumber,
          'Body': 'Your code: $code for recovery pin',
        },
      );
      debugPrint('Response status: ${response.statusCode}');

      debugPrint('Response body: ${response.body}');

      return code.toString();
    } on Exception catch (e) {
      return 'Error: $e';
    }
  }
}
