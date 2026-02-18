part of 'response_models.dart';

@freezed
abstract class ConversationMember with _$ConversationMember {
  const factory ConversationMember({
    required String id,
    @JsonKey(name: 'conversation_id') required String conversationId,
    @JsonKey(name: 'user_id') required String userId,
    required String role,
    @JsonKey(name: 'joined_at') required DateTime joinedAt,
    @JsonKey(name: 'last_read_message_id') String? lastReadMessageId,
  }) = _ConversationMember;

  factory ConversationMember.fromJson(Map<String, dynamic> json) =>
      _$ConversationMemberFromJson(json);
}