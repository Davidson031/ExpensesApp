


class Transaction {

  final String? id;
  final String title;
  final double? value;
  final DateTime date;


  Transaction({
    this.id, 
    required this.title,
    this.value,
    required this.date,
  });


}