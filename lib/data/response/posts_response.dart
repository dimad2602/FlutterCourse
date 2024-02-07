import 'package:curse_app_1/data/dtos/post_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/post_model/post_model.dart';

part 'posts_response.g.dart';
part 'posts_response.freezed.dart';

@freezed
class PostsResponse with _$PostsResponse {
  const PostsResponse._();
  const factory PostsResponse({
    required List<PostDto> result,
  }) = _PostsResponse;

  factory PostsResponse.fromJson(Map<String, dynamic> json) =>
      _$PostsResponseFromJson(json);
}
