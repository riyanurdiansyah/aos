import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAndMoreWidget extends StatelessWidget {
  const TextAndMoreWidget({
    super.key,
    required this.title,
    required this.titleMore,
    required this.onTap,
  });

  final String title;
  final String titleMore;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        TextButton.icon(
          onPressed: onTap,
          icon: Text(
            titleMore,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: const Color.fromARGB(255, 141, 106, 3),
            ),
          ),
          label: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color.fromARGB(255, 141, 106, 3),
            size: 14,
          ),
        )
      ],
    );
  }
}
