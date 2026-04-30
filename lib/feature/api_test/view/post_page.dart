import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/feature/api_test/bloc/post_bloc.dart';
import 'package:untitled/feature/api_test/bloc/post_bloc.dart';
import 'package:untitled/feature/api_test/post_repository.dart';

@RoutePage(name: 'PostPageRoute')
class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => PostBloc(PostRepository())..add(GetPost()),
          child: BlocBuilder<PostBloc, PostState>(
            builder: (context, state) {
              if (state is PostLoading) {
                return Center(child: CircularProgressIndicator());
              }

              if (state is PostError) {
                if (state.error is DioException) {
                  print(state.error);
                  return Text(state.error.toString());
                }
              }

              if (state is PostSuccess) {
                return ListView.builder(
                  itemCount: state.postList.length,
                  itemBuilder: (context, index) {
                    final post = state.postList[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[Text(post.userId.toString() ?? '')],
                      ),
                    );
                  },
                );
              }

              return Container();
            },
          ),
        ),
      ),
    );
  }
}
