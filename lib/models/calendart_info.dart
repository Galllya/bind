import 'package:bind_test/models/money_transfer_info.dart';

class CalendarInfo {
  final List<MoneyTransferInfo> informations;
  final String date;

  CalendarInfo({
    required this.informations,
    required this.date,
  });
}
