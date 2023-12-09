import 'package:intl/intl.dart';

String formatDate(DateTime? date) {
  if (date != null) {
    return DateFormat("y-MM-dd").format(date);
  } else {
    return '';
  }
}
