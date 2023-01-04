import 'package:logger/logger.dart';

Logger logger =
    Logger(printer: PrettyPrinter(methodCount: 0, noBoxingByDefault: false));

appLog(var data, {Level level = Level.debug}) {
  switch (level) {
    case Level.debug:
      logger.d(data.toString());
      break;
    case Level.info:
      logger.i(data.toString());
      break;
    case Level.warning:
      logger.w(data.toString());
      break;
    case Level.error:
      logger.e(data.toString());
      break;
    case Level.wtf:
      logger.wtf(data.toString());
      break;
    case Level.verbose:
      logger.v(data.toString());
      break;
    default:
      logger.i(data.toString());
      break;
  }
}
