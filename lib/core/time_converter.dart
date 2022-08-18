import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

// 使用していない
class TimeConverter implements JsonConverter<DateTime, String> {
  const TimeConverter();
  @override
  DateTime fromJson(String date) {
    final formatter = DateFormat("y/M/d HH:mm");
    final replaceDate = date.replaceAll('T', ' ').replaceRange(16, null, '');
    final newDate = formatter.parse(replaceDate);
    return newDate;
  }

  @override
  String toJson(DateTime date) {
    final dateStr = DateFormat('yyyy-MM-dd').format(date);
    return dateStr;
  }
}
