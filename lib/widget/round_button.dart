import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const RoundButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFDE1),
        borderRadius: BorderRadius.circular(60),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF040504),
          ),
        ),
      ),
    );
  }
}
