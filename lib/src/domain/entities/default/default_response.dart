import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_response.freezed.dart';
part 'default_response.g.dart';

@freezed
class DefaultResponse with _$DefaultResponse {
  const factory DefaultResponse({
    required bool success,
    required String message,
  }) = _DefaultResponse;

  factory DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$DefaultResponseFromJson(json);
}
