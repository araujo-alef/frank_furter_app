import 'package:dio/dio.dart';
import 'package:frank_furter/model/currencies_model.dart';
import 'package:frank_furter/repository/i_repository.dart';

class RepositoyImpl extends IRepositoy {
  static String baseUrl = 'https://api.frankfurter.app';
  final Dio dio = Dio();

  @override
  Future<List<String>> fetchListCurrencies() async {
    final List<String> list = []; 
    final response = await dio.get('$baseUrl/currencies');
    (response.data as Map).forEach((key, value) { 
      list.add('$key - $value');
    });
    return list;
  }

  @override
  Future<ConvertedCurrencyModel> convertCurrency(String currentValue, String currentType, String convertedType) async {
    currentType = currentType.substring(0, 3);
    convertedType = convertedType.substring(0, 3);
    print('$baseUrl/latest?amount=$currentValue&from=$currentType&to=$convertedType');
    final response = await dio.get('$baseUrl/latest?amount=$currentValue&from=$currentType&to=$convertedType');
    return ConvertedCurrencyModel.fromJson(response.data, convertedType);
  }
}