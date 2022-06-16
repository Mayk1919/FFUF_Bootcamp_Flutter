import 'package:flutter/material.dart';

class EmptyPageWithMessage extends StatelessWidget {
  const EmptyPageWithMessage({
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
