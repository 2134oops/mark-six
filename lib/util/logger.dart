import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

void debugLog(String tag, String message) {
  logger.d("$tag: $message");
}

void errorLog(String tag, String message) {
  logger.e("$tag: $message");
}

