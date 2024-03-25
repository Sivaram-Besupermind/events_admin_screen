import 'package:flutter/material.dart';

class WeekDayButton extends StatelessWidget {
  const WeekDayButton({
    required this.text,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
          shape: const ContinuousRectangleBorder(),
          color: isSelected ? Colors.blue : Colors.grey,
          shadowColor: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          )),
    );
  }
}