import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageResiver extends StatelessWidget {
  MessageResiver({super.key, required this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height: 49,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const ShapeDecoration(
              color: Color(0xFF85C240),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(4),
                ),
              ),
            ),
            child: Center(
              child: Text("$text",
                  // textDirection: TextDirection.ltr,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            )),
        const SizedBox(
          width: 8,
        ),
        const CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 12,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
