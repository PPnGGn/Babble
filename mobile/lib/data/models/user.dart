part of 'response_models.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String username,
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    required String status,
    @JsonKey(name: 'last_seen') DateTime? lastSeen,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
