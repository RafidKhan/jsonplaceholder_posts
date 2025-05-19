import 'package:flutter/material.dart';
import 'package:jsonplaceholder_posts/modules/global_widgets/global_text.dart';
import 'package:jsonplaceholder_posts/modules/models/post_item_data.dart';

class PostItemWidget extends StatelessWidget {
  final PostItemModel model;
  final VoidCallback? onTap;

  const PostItemWidget({super.key, required this.model, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GlobalText(
        text: model.title,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      subtitle: GlobalText(
        text: model.body,
        maxLines: 3,
      ),
      onTap: onTap,
    );
  }
}
