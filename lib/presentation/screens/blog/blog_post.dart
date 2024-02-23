import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';
import 'blog_post_cubit.dart';
import '../../widget/ad_helper.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int i = ModalRoute.of(context)!.settings.arguments as int;
    return BlocProvider(
      create: (context) => BlogPostCubit([])..fetchWpPosts(),
      child: BlocBuilder<BlogPostCubit, BlogPostState>(
        builder: (context, state) {
          if (state == BlogPostState.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state == BlogPostState.error) {
            return const Center(child: Text('Error fetching posts'));
          } else {
            return BlogPostView(i: i);
          }
        },
      ),
    );
  }
}

class BlogPostView extends StatelessWidget {
  final int i;

  const BlogPostView({Key? key, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posts = context.select((BlogPostCubit cubit) => cubit.posts);
    String imageUrl = '';
    try {
      imageUrl = posts[i]['yoast_head_json']['og_image'][0]['url'];
    } catch (_) {
      imageUrl =
          'https://jointedrail.com/wp-content/uploads/2020/11/noimage-banner1.png';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                imageUrl,
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                posts[i]['title']['rendered'],
                style: const TextStyle(
                    fontSize: 24,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        IconlyBold.timeCircle,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        posts[i]['yoast_head_json']['twitter_misc']
                                ['Est. reading time'] +
                            ' read',
                        style: const TextStyle(
                            fontFamily: "Lato", color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconlyBold.calendar,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        DateFormat.yMMMMd()
                            .format(DateTime.parse(posts[i]['date'])),
                        style: const TextStyle(
                            fontFamily: "Lato", color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: AppAds(),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Text(
                _parseHtmlString(posts[i]['content']['rendered']),
                style: const TextStyle(fontSize: 20, fontFamily: "Lato"),
              ),
            ),
            AppAds(),
          ],
        ),
      ),
    );
  }

  String _parseHtmlString(String htmlString) {
    final document = parse(htmlString);
    return document.body!.text;
  }
}
