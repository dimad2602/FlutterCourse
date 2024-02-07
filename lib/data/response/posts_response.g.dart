// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostsResponseImpl _$$PostsResponseImplFromJson(Map<String, dynamic> json) =>
    _$PostsResponseImpl(
      result: (json['result'] as List<dynamic>)
          .map((e) => PostDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostsResponseImplToJson(_$PostsResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
