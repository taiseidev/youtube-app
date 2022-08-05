import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class TimeConverter implements JsonConverter<DateTime, String> {
  const TimeConverter();
  @override
  DateTime fromJson(String date) {
    // 2022-01-13T10:00:31Zといった値が返ってくるため
    // "2022-01013 10:00:00"のDateTime型に変換する
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
