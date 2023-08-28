import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/animation.dart';

class OfflineWidget extends StatelessWidget {
  const OfflineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: TranslateUpToDownAnimation(
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            height: 40.0,
            width: Get.size.width,
            decoration: BoxDecoration(color: Colors.red.shade300),
            child: Center(
              child: Text(
                "Tidak ada koneksi internet",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
