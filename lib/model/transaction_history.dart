class TransactionHistory {
  const TransactionHistory({
    required this.title,
    required this.date,
    required this.amount,
    required this.isTransfer,
  });
  final String title;
  final String date;
  final String amount;
  final bool isTransfer;
}
