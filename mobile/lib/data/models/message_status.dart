part of 'response_models.dart';

@freezed
abstract class MessageStatus with _$MessageStatus {
  const factory MessageStatus({
    required String id,
    @JsonKey(name: 'message_id') required String messageId,
    @JsonKey(name: 'user_id') required String userId,
    required String status,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _MessageStatus;

  factory MessageStatus.fromJson(Map<String, dynamic> json) =>
      _$MessageStatusFromJson(json);
}