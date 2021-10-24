import 'package:frank_furter/model/currencies_model.dart';

abstract class IRepositoy {
  Future<List<String>> fetchListCurrencies();

  Future<ConvertedCurrencyModel> convertCurrency(String currentValue, String currentType, String convertedType);
}