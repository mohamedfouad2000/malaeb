import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageSender extends StatelessWidget {
  MessageSender({super.key, required this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.black,
          radius: 12,
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
            height: 49,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const ShapeDecoration(
              color: Color(0xFFF2F2F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(16),
                ),
              ),
            ),
            child: Center(
              child: Text("$text",
                  // textDirection: TextDirection.ltr,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            )),
      ],
    );
  }
}
