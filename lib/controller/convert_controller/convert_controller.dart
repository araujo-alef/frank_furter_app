import 'package:flutter/cupertino.dart';
import 'package:frank_furter/model/currencies_model.dart';
import 'package:frank_furter/repository/i_repository.dart';
import 'package:frank_furter/repository/repository_impl.dart';

class ConvertController extends ChangeNotifier {
  static ConvertController instance = ConvertController();
  final IRepositoy api = RepositoyImpl();

  String currentCurrency = '0';
  String convertedCurrency = '0';

  String currentTypeCurrency = '';
  String convertedTypeCurrency = '';
  List<String> listCurrencies = [];

  convertCurrency() async {
    String currentCurrencyForConverted = currentCurrency.replaceAll(',', '.');
    if(currentTypeCurrency == convertedTypeCurrency ) {
      convertedCurrency = currentCurrency;
    } else {
      ConvertedCurrencyModel response = await api.convertCurrency(currentCurrencyForConverted, currentTypeCurrency, convertedTypeCurrency);
      convertedCurrency = response.convertedCurrencyValue.toStringAsFixed(2).replaceAll('.', ',');
    }   
    notifyListeners();
  }

  setCurrentType(String newValue) {
    currentTypeCurrency = newValue;
    convertCurrency();
    notifyListeners();
  }

  setConvertedType(String newValue) {
    convertedTypeCurrency = newValue;
    convertCurrency();
    notifyListeners();
  }

  setListCurrencies() async {
    listCurrencies = await api.fetchListCurrencies();
    currentTypeCurrency = listCurrencies[0];
    convertedTypeCurrency = listCurrencies[1];
    notifyListeners();
  }

  mockList(List<String> list) {
    listCurrencies = list;
  }

  setCurrentCurrencyValue(String value) {
    if(value.contains('.')) {
      if(currentCurrency.contains(',')) {
        return;
      } else {
        if(currentCurrency == '') {
          currentCurrency = currentCurrency + '0,';
        } else {
          currentCurrency = currentCurrency + ',';
        }
      }
    } else {
      if(currentCurrency.length >= 4) {
        if(currentCurrency[currentCurrency.length - 3] == ',') {
          return;
        } else {
          currentCurrency = currentCurrency + value;
        }
      } else {
        if(currentCurrency == '') {
          if(value == '00') {
            return;
          } else {
            currentCurrency = currentCurrency + value;
          }
        } else {
          if(currentCurrency[0] == '0' && value == '.') {
            currentCurrency = currentCurrency + value;
          } else if (currentCurrency == '0') {
            currentCurrency = value;
          } else {
            currentCurrency = currentCurrency + value;
          }
        }
      }
    }
    convertCurrency();
    notifyListeners();
  }

  deleteCurrencyValue() {
    if(currentCurrency == '') {
      return;
    } else if (currentCurrency.length == 1) {
      currentCurrency = '0';
      convertedCurrency = '0';
    } else {
      currentCurrency = currentCurrency.substring(0, (currentCurrency.length - 1));
      convertCurrency();
    }
    notifyListeners();
  }

  cleanCurrencyValue() {
      currentCurrency = '0';
      convertedCurrency = '0';
      notifyListeners();
  }

  setConvertedCurrencyValue(String value) {
    convertedCurrency = convertedCurrency + value;
    notifyListeners();
  }
}