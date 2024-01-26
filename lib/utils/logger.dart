import 'package:logger/logger.dart';

final logger = Logger(
    printer: PrefixPrinter(
      PrettyPrinter(
        methodCount: 1, // number of method calls to be displayed
        errorMethodCount: 8, // number of method calls if stacktrace is provided
        // lineLength: 120, // width of the output
        colors: true,
        printEmojis: true, // Print an emoji for each log message
        printTime: true,
      ),
    ));