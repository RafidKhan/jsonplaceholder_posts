import 'package:flutter/material.dart';
import 'package:jsonplaceholder_posts/modules/global_widgets/global_appbar.dart';
import 'package:jsonplaceholder_posts/modules/models/post_item_data.dart';
import 'package:jsonplaceholder_posts/modules/posts/presentation/components/post_item_widget.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppbar(
        title: "Posts",
      ),
      body: ListView.separated(
        itemCount: 20,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          return PostItemWidget(
            model: PostItemModel(
              title: "${index + 1}",
              body:
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
            ),
          );
        },
      ),
    );
  }
}
