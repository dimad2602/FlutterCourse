import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/post_model/post_model.dart';

part 'post_dto.g.dart';
part 'post_dto.freezed.dart';

@freezed
class PostDto with _$PostDto {
  const PostDto._();
  const factory PostDto({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _PostDto;

  PostModel toDomain() => PostModel(userId: userId, id: id, title: title, body: body);

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
}
