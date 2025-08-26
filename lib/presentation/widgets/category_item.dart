import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Color color;
  final Color bgcClor;
  final IconData icon;
  final String title;
  const CategoryItem({
    required this.icon,
    required this.title,
    required this.color,
    required this.bgcClor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      decoration: BoxDecoration(
        color: bgcClor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 25),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
