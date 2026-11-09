/// Response models for the Parts Of Speech API.

/// API Response wrapper.
class PartsofspeechResponse {
  final String status;
  final dynamic error;
  final PartsofspeechData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  PartsofspeechResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory PartsofspeechResponse.fromJson(Map<String, dynamic> json) => PartsofspeechResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? PartsofspeechData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Parts Of Speech API.

class PartsofspeechData {
  String? partofspeech;
  List<String>? result;
  num? count;

  PartsofspeechData({
    this.partofspeech,
    this.result,
    this.count,
  });

  factory PartsofspeechData.fromJson(Map<String, dynamic> json) => PartsofspeechData(
      partofspeech: json['partofspeech'],
      result: (json['result'] as List?)?.cast<String>(),
      count: json['count'],
    );
}

class PartsofspeechRequest {
  String text;
  String? partofspeech;

  PartsofspeechRequest({
    required this.text,
    this.partofspeech,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
      if (partofspeech != null) 'partofspeech': partofspeech,
    };
}
