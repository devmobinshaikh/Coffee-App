import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeType extends StatelessWidget {
  const CoffeType({super.key, required this.coffeType, required this.isSelected, required this.onTap});
  final String coffeType;
  final bool isSelected;
  final VoidCallback onTap;
  // final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Text(
          coffeType,
          style: GoogleFonts.nunito(
              fontSize: 20, fontWeight: FontWeight.bold, color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
