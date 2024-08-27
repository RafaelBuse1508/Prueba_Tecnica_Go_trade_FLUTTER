import 'package:flutter/material.dart';

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final VoidCallback? onMenuPressed;

  CustomAppBar2({
    required this.title,
    this.showBackButton = true,
    this.onMenuPressed,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F0ED),
      child: AppBar(
        leading: showBackButton
            ? IconButton(
                icon: Icon(Icons.arrow_back, color: Color(0xFFA6A6A6)),
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
              style: TextStyle(color: Color(0xFFA6A6A6), fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const ImageIcon(
              AssetImage("assets/img/menu.png"),
              color: Color(0xFFA6A6A6),
              size: 50,
            ),
            onPressed: onMenuPressed,
          ),
        ],
      ),
    );
  }
}
