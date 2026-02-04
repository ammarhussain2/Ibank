class CurrencyResponse {
  final String result;
  final List<CurrencyModel> currencies;

  CurrencyResponse({required this.result, required this.currencies});

  factory CurrencyResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> rawList = json['supported_codes'] ?? [];

    final currenciesList = rawList.map((item) {
      return CurrencyModel(code: item[0] ?? '', name: item[1] ?? '');
    }).toList();

    return CurrencyResponse(
      result: json['result'] ?? 'failed',
      currencies: currenciesList,
    );
  }
}

class CurrencyModel {
  final String code;
  final String name;

  CurrencyModel({required this.code, required this.name});
}
