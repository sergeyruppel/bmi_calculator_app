import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  
  const ReusableCard({
    super.key,
    required this.color,
    required this.cardChild,
    this.onPressed,
  });

  final Color color;
  final Widget cardChild;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: cardChild,
      ),
    );
  }
}
