// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  username: json['username'] as String,
  displayName: json['display_name'] as String,
  avatarUrl: json['avatar_url'] as String?,
  status: json['status'] as String,
  lastSeen: json['last_seen'] == null
      ? null
      : DateTime.parse(json['last_seen'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'display_name': instance.displayName,
  'avatar_url': instance.avatarUrl,
  'status': instance.status,
  'last_seen': instance.lastSeen?.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
};

_Conversation _$ConversationFromJson(Map<String, dynamic> json) =>
    _Conversation(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      createdBy: json['created_by'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ConversationToJson(_Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'avatar_url': instance.avatarUrl,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_ConversationMember _$ConversationMemberFromJson(Map<String, dynamic> json) =>
    _ConversationMember(
      id: json['id'] as String,
      conversationId: json['conversation_id'] as String,
      userId: json['user_id'] as String,
      role: json['role'] as String,
      joinedAt: DateTime.parse(json['joined_at'] as String),
      lastReadMessageId: json['last_read_message_id'] as String?,
    );

Map<String, dynamic> _$ConversationMemberToJson(_ConversationMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversation_id': instance.conversationId,
      'user_id': instance.userId,
      'role': instance.role,
      'joined_at': instance.joinedAt.toIso8601String(),
      'last_read_message_id': instance.lastReadMessageId,
    };

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  id: json['id'] as String,
  conversationId: json['conversation_id'] as String,
  senderId: json['sender_id'] as String,
  type: json['type'] as String,
  content: Content.fromJson(json['content'] as Map<String, dynamic>),
  replyTo: json['reply_to'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'id': instance.id,
  'conversation_id': instance.conversationId,
  'sender_id': instance.senderId,
  'type': instance.type,
  'content': instance.content,
  'reply_to': instance.replyTo,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'deleted_at': instance.deletedAt?.toIso8601String(),
};

_Content _$ContentFromJson(Map<String, dynamic> json) => _Content(
  text: json['text'] as String?,
  attachments: (json['attachments'] as List<dynamic>?)
      ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
      .toList(),
  aiModel: json['ai_model'] as String?,
  sources: (json['sources'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ContentToJson(_Content instance) => <String, dynamic>{
  'text': instance.text,
  'attachments': instance.attachments,
  'ai_model': instance.aiModel,
  'sources': instance.sources,
};

_Attachment _$AttachmentFromJson(Map<String, dynamic> json) => _Attachment(
  type: json['type'] as String,
  url: json['url'] as String,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  size: (json['size'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$AttachmentToJson(_Attachment instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'name': instance.name,
    };

_MessageStatus _$MessageStatusFromJson(Map<String, dynamic> json) =>
    _MessageStatus(
      id: json['id'] as String,
      messageId: json['message_id'] as String,
      userId: json['user_id'] as String,
      status: json['status'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$MessageStatusToJson(_MessageStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message_id': instance.messageId,
      'user_id': instance.userId,
      'status': instance.status,
      'updated_at': instance.updatedAt.toIso8601String(),
    };
