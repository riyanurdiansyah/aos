import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constanta.dart';
import '../painter/navbar_custom_painter.dart';

class BottonNavbarWidget extends StatelessWidget {
  const BottonNavbarWidget({
    super.key,
    required this.indexNavbar,
    required this.onTap,
  });

  final int indexNavbar;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(Get.size.width, 80),
          painter: BNBCustomPainter(),
        ),
        Center(
          heightFactor: 0.6,
          child: FloatingActionButton(
              backgroundColor: Colors.orange,
              child: Icon(Icons.shopping_cart_rounded),
              elevation: 0.1,
              onPressed: () {}),
        ),
        SizedBox(
          width: double.infinity,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              listNavbar.length,
              (index) {
                if (index == 1) {
                  return Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          listNavbar[index],
                          color: indexNavbar == index
                              ? Colors.orange
                              : Colors.grey.shade400,
                        ),
                        onPressed: () => onTap(index),
                        splashColor: Colors.white,
                      ),
                      SizedBox(
                        width: Get.size.width * 0.24,
                      )
                    ],
                  );
                }
                return IconButton(
                  icon: Icon(
                    listNavbar[index],
                    color: indexNavbar == index
                        ? Colors.black
                        : Colors.grey.shade400,
                  ),
                  onPressed: () => onTap(index),
                  splashColor: Colors.white,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
