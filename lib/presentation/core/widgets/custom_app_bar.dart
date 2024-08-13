import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  const CustomAppBar({super.key, required this.title, this.height = 60.0});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[200], // Super light grey background color
      elevation: 0, // Remove default AppBar shadow
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200], // Reapply super light grey color
          border: Border(
            bottom: BorderSide(
              color: Colors.grey[400]!, // Slightly darker border color
              width: 2.0, // Border width
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Lighter shadow color
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 4), // Shadow position (below the AppBar)
            ),
          ],
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black), // White text color
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
