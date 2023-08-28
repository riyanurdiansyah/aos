import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AppDialog {
  static dialogConfirmDeleteCart(Function() onConfirm) {
    return Get.defaultDialog(
      title: "Hapus",
      content: Text(
        "Yakin ingin menghapus data ini?",
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
      confirm: ElevatedButton(
        onPressed: onConfirm,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red.shade500,
        ),
        child: Text(
          "YA",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
      cancel: ElevatedButton(
        onPressed: () => Get.back(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade500,
        ),
        child: Text(
          "TIDAK",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  static loadingAuthNotDismissableDialog() {
    return Get.defaultDialog(
      radius: 8,
      onWillPop: () async => true,
      barrierDismissible: true,
      middleText: '',
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      content: Column(
        children: [
          const SizedBox(height: 25),
          Lottie.asset('assets/loading-animation.json',
              height: 100, width: 100),
          const SizedBox(height: 35),
          Text(
            'Harap Tunggu',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  static errorAuthDialog(String promptMessage) {
    return Get.defaultDialog(
      radius: 8,
      middleText: '',
      barrierDismissible: true,
      onWillPop: () async => true,
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      content: Column(
        children: [
          const SizedBox(height: 25),
          Lottie.asset('assets/fail-animation.json',
              repeat: false, height: 100, width: 100),
          const SizedBox(height: 35),
          Text(
            promptMessage,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  static successAuthDialog(String promptMessage) {
    Get.defaultDialog(
      onWillPop: () async => true,
      barrierDismissible: false,
      radius: 8,
      middleText: '',
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      content: Column(
        children: [
          const SizedBox(height: 25),
          Lottie.asset('assets/success-animation.json',
              repeat: false, height: 100, width: 100),
          const SizedBox(height: 35),
          Text(
            promptMessage,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
