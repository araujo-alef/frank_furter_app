import 'package:frank_furter/repository/i_repository.dart';

class Provider {
  final IRepositoy repositoy;

  Provider({
    required this.repositoy,
  });

  Future fetchApi() async {
    return repositoy.fetchListCurrencies();
  }
}
