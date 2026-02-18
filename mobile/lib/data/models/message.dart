part of 'response_models.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    required String id,
    @JsonKey(name: 'conversation_id') required String conversationId,
    @JsonKey(name: 'sender_id') required String senderId,
    required String type,
    required Content content,
    @JsonKey(name: 'reply_to') String? replyTo,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}




@freezed
abstract class Content with _$Content {
  const factory Content({
    String? text,
    List<Attachment>? attachments,
    @JsonKey(name: 'ai_model') String? aiModel,
    List<String>? sources,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}



@freezed
abstract class Attachment with _$Attachment {
  const factory Attachment({
    required String type, // 'image', 'file', 'video'
    required String url,
    int? width,
    int? height,
    int? size,
    String? name,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}