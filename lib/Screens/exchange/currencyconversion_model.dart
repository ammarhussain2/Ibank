class CurrencyConversionResponse {
  final String result;
  final String documentation;
  final String termsOfUse;
  final int timeLastUpdateUnix;
  final String timeLastUpdateUtc;
  final int timeNextUpdateUnix;
  final String timeNextUpdateUtc;
  final String baseCode;
  final String targetCode;
  final double conversionRate;
  final double conversionResult;

  CurrencyConversionResponse({
    required this.result,
    required this.documentation,
    required this.termsOfUse,
    required this.timeLastUpdateUnix,
    required this.timeLastUpdateUtc,
    required this.timeNextUpdateUnix,
    required this.timeNextUpdateUtc,
    required this.baseCode,
    required this.targetCode,
    required this.conversionRate,
    required this.conversionResult,
  });

  factory CurrencyConversionResponse.fromJson(Map<String, dynamic> json) {
    return CurrencyConversionResponse(
      result: json['result'] ?? '',
      documentation: json['documentation'] ?? '',
      termsOfUse: json['terms_of_use'] ?? '',
      timeLastUpdateUnix: json['time_last_update_unix'] ?? 0,
      timeLastUpdateUtc: json['time_last_update_utc'] ?? '',
      timeNextUpdateUnix: json['time_next_update_unix'] ?? 0,
      timeNextUpdateUtc: json['time_next_update_utc'] ?? '',
      baseCode: json['base_code'] ?? '',
      targetCode: json['target_code'] ?? '',
      conversionRate: (json['conversion_rate'] ?? 0).toDouble(),
      conversionResult: (json['conversion_result'] ?? 0).toDouble(),
    );
  }
}
