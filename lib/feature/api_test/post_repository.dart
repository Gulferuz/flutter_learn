import 'package:dio/dio.dart';
import 'package:untitled/feature/api_test/models/post_model.dart';

class PostRepository {
  Future<List<PostModel>> getPosts() async {
    final dio = Dio();
    final response = await dio.get(
      'https://jsonplaceholder.typicode.com/posts',
      options: Options(headers: {'Accept': 'application/json'}),
    );

    final result = parsePosts(response.data);
    print(result);
    return result;
  }
}

List<PostModel> parsePosts(List<dynamic> jsonList) {
  return jsonList.map((json) => PostModel.fromJson(json)).toList();
}
