import 'package:flutter/material.dart';

class SuggestTile extends StatelessWidget {
  const SuggestTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          'Hello',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11.5,
          ),
        ),
      ),
    );
  }
}
