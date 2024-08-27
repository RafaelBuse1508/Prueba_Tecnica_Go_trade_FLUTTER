import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final VoidCallback? onMenuPressed;

  CustomAppBar({
    required this.title,
    this.showBackButton = true,
    this.onMenuPressed,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF00E51), Color(0xFFFF6720), Color(0xFFFF9E1B)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: AppBar(
        leading: showBackButton
            ? IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            : null,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const ImageIcon(
              AssetImage("assets/img/menu.png"),
              color: Colors.white,
              size: 50,
            ),
            onPressed: onMenuPressed,
          ),
        ],
      ),
    );
  }
}
