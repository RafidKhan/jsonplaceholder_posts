import 'package:flutter/material.dart';
import 'package:jsonplaceholder_posts/modules/global_widgets/global_text.dart';

class GlobalAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;

  const GlobalAppbar({
    super.key,
    required this.title,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GlobalText(
        text: title,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      centerTitle: centerTitle,
      backgroundColor: Colors.blue,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56);
}
