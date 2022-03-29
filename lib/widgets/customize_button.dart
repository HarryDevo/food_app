import 'package:flutter/material.dart';

class CustomizeButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  const CustomizeButton({
    Key? key,
    required this.label,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: isSelected ? Colors.black87 : Colors.grey[300],
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(
              0.0,
              0.0,
            ),
            spreadRadius: 2,
            blurRadius: 4,
          ),
        ],
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          color: isSelected ? Colors.white : Colors.black87,
        ),
      ),
    );
  }
}
