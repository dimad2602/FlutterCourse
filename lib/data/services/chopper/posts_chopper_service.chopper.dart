// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$PostsChopperService extends PostsChopperService {
  _$PostsChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = PostsChopperService;

  @override
  Future<Response<dynamic>> fetchPosts() {
    final Uri $url = Uri.parse('/posts');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
