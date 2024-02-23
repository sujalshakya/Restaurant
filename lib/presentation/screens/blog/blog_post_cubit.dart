import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/repositories/retrieve_post.dart';

enum BlogPostState { loading, loaded, error }

class BlogPostCubit extends Cubit<BlogPostState> {
  final List<dynamic> posts;

  BlogPostCubit(this.posts) : super(BlogPostState.loading);

  void fetchWpPosts() async {
    try {
      await fetchPosts();
      emit(BlogPostState.loaded);
    } catch (_) {
      emit(BlogPostState.error);
    }
  }
}
