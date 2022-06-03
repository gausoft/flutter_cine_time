import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.leading,
    this.actions,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          UniconsLine.angle_left_b,
          color: Color(0xFF828282),
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(UniconsLine.search, color: Color(0xFF828282)),
          onPressed: () {},
        ),
        IconButton(
          icon: const Image(
            image: AssetImage('assets/images/user-avatar.png'),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  final Size preferredSize;
}
