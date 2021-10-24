class ConvertedCurrencyModel {

  final double amount;
  final String base;
  final String date;
  final num convertedCurrencyValue;
  

  ConvertedCurrencyModel({
    required this.amount,
    required this.base,
    required this.date,
    required this.convertedCurrencyValue,
  });
  
  factory ConvertedCurrencyModel.fromJson(Map<String, dynamic> parsedJson, String convertCurrencyInitials){
    return ConvertedCurrencyModel(
      amount: parsedJson ['amount'],
      base: parsedJson ['base'],
      date: parsedJson ['date'],
      convertedCurrencyValue: parsedJson ['rates'][convertCurrencyInitials],
    );
  }
}
