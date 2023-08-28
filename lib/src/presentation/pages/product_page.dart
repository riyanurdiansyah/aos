import 'package:aos/src/presentation/pages/widgets/offline_widget.dart';
import 'package:aos/src/utils/routes_name.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/constanta.dart';
import '../controllers/product_controller.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  final _productC = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return ConnectivityWidgetWrapper(
      disableInteraction: true,
      offlineWidget: const OfflineWidget(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
                size: 18,
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            _productC.product.value.productName,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 1.2,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.heart_fill,
                color: Colors.grey.shade500,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              height: 250,
              width: Get.size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  fit: BoxFit.contain,
                  imageUrl: _productC.product.value.productPhoto,
                  placeholder: (context, url) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.grey,
                      child: const SizedBox(),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _productC.product.value.productName,
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            currencyFormatter.format(int.parse(
                                    _productC.product.value.productValue) *
                                0.000065),
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.orange,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star_border_outlined,
                              size: 14,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "4.5",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    _productC.product.value.productDescription,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.normal,
                      fontSize: 13.5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 65,
          child: Row(
            children: [
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400,
                  ),
                  child: const Icon(
                    Icons.archive_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      _productC.addedDataToDB(_productC.product.value);
                      Get.toNamed(AppRouteName.cart);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    child: Text(
                      "Add to Cart",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
