// File: lib/widgets/filter_button.dart

import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const FilterButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF98CD00) : Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
          border:
              isSelected
                  ? Border.all(color: const Color(0xFF6B993E), width: 1.5)
                  : null,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}
