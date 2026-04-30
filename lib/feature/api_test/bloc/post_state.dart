part of 'post_bloc.dart';

@immutable
sealed class PostState {}

final class PostInitial extends PostState {}
final class PostLoading extends PostState {}
final class PostSuccess extends PostState {
  final List<PostModel> postList;
  PostSuccess(this.postList);
}
final class PostError extends PostState {
  final Object error;
  PostError(this.error);
}
