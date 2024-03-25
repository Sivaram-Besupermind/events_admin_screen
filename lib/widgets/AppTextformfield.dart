import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    required this.onChanged,
    this.width,
    this.inputFormatters,
    this.maxLines,
    this.minLines,
    this.hintText,
    super.key,
  });

  final void Function(String value) onChanged;
  final double? width;
  final int? maxLines;
  final int? minLines;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        style: const TextStyle(fontSize: 14),
        minLines: minLines,
        maxLines: maxLines,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          border: OutlineInputBorder(),
          isCollapsed: true,
        ),
      ),
    );
  }
}
