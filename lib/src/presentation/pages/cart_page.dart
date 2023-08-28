import 'package:aos/src/presentation/controllers/cart_controller.dart';
import 'package:aos/src/presentation/pages/widgets/product_cart_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constanta.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final _cartC = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          if (_cartC.products.isEmpty) {
            return Center(
              child: Text(
                "Tidak ada daftar keranjang",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            );
          }

          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Obx(
                  () => Column(
                    children: List.generate(
                      _cartC.products.length,
                      (index) {
                        final data = _cartC.products[index];
                        return ProductCartCardWidget(
                          data: data,
                          increase: () => _cartC.increaseCart(index),
                          decrease: () => _cartC.decreaseCart(index),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.grey.shade300,
                  padding: const EdgeInsets.all(14.0),
                  margin: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Billing Information",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Order Total",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Obx(
                            () => Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  currencyFormatter
                                      .format(_cartC.total.value * 0.000065),
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Tax",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Obx(
                            () => Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  currencyFormatter.format(
                                      (_cartC.total.value * 0.000065) * 0.1),
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          const Expanded(flex: 3, child: SizedBox()),
                          Expanded(
                            child: Container(
                              color: const Color(0xFFD3D4D6),
                              width: Get.width,
                              height: 2,
                              child: LayoutBuilder(
                                builder: (context, constraint) => Flex(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  direction: Axis.horizontal,
                                  children: List.generate(
                                    (constraint.constrainWidth() / 8).floor(),
                                    (index) => const SizedBox(
                                      width: 4,
                                      height: 2,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Grand Total",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Obx(
                            () => Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  currencyFormatter.format((_cartC.total.value *
                                          0.000065) +
                                      ((_cartC.total.value * 0.000065) * 0.1)),
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 50,
        child: ElevatedButton.icon(
          onPressed: () => _cartC.checkout(),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          ),
          icon: const Icon(
            Icons.shopping_cart_rounded,
          ),
          label: Text(
            "Checkout",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
