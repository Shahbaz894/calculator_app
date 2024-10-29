import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final ValueChanged<String> onTap; // Changed to ValueChanged<String>

  const CalculatorButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(label), // Pass the label back to the parent on tap
      child: Container(
        margin: const EdgeInsets.all(4.0),
        padding: const EdgeInsets.all(4.0),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
