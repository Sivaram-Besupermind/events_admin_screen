import 'package:flutter/material.dart';

class AppDropdownButton<T> extends StatelessWidget {
  const AppDropdownButton({
    required this.data,
    required this.onChanged,
    this.width,
    super.key,
  });

  final List<DropdownData> data;
  final void Function(T value) onChanged;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: DropdownButtonFormField<T>(
        onChanged: (value) {
          if (value != null) {
            onChanged(value);
          }
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          border: OutlineInputBorder(),
        ),
        borderRadius: BorderRadius.circular(8),
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        items: List.generate(
          data.length,
          (index) => DropdownMenuItem<T>(
            value: data[index].value,
            child: Text(data[index].name),
          ),
        ),
      ),
    );
  }
}

class DropdownData<T> {
  DropdownData({
    required this.value,
    required this.name,
  });

  final T value;
  final String name;
}
