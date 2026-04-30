import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/feature/api_test/models/post_model.dart';
import 'package:untitled/feature/api_test/post_repository.dart';

part 'post_event.dart';

part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository repository;
  PostBloc(this.repository) : super(PostInitial()) {
    on<GetPost>((event, emit)  async {
      emit(PostLoading());

      try {
        final result = await repository.getPosts();
        emit(PostSuccess(result));
      } catch (error) {
        emit(PostError(error));
      }
    });
  }
}
