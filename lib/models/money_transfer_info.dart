class MoneyTransferInfo {
  final String? picName;
  final bool isReceipts;
  final String title;
  final String time;
  final double money;

  MoneyTransferInfo(
      {this.picName,
      required this.isReceipts,
      required this.title,
      required this.time,
      required this.money});
}
