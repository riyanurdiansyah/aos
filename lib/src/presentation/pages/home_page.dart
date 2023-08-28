import 'package:aos/src/presentation/controllers/home_controller.dart';
import 'package:aos/src/presentation/pages/widgets/product_card_widget.dart';
import 'package:aos/src/presentation/pages/widgets/product_shimmer_widget.dart';
import 'package:aos/src/presentation/pages/widgets/text_and_more_widget.dart';
import 'package:aos/src/utils/constanta.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/banner_slider_widget.dart';
import 'widgets/bottom_navbar_widget.dart';
import 'widgets/offline_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _homeC = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: ConnectivityWidgetWrapper(
        disableInteraction: true,
        offlineWidget: const OfflineWidget(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "MARKETPEDIA",
                      style: GoogleFonts.akayaTelivigala(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Transform.rotate(
                      angle: 345 * math.pi / 180,
                      child: const Icon(
                        Icons.notifications_rounded,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Obx(
                  () => BannerSliderWidget(
                    indexSlider: _homeC.indexBanner.value,
                    onSlide: _homeC.onSlide,
                  ),
                ),
                TextAndMoreWidget(
                  title: "Top Categories",
                  titleMore: "View more",
                  onTap: () {},
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      listIcon.length,
                      (index) => Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                        ),
                        child: Icon(listIcon[index]),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextAndMoreWidget(
                  title: "New Arrivals",
                  titleMore: "View more",
                  onTap: () {},
                ),
                Obx(
                  () {
                    // STATE IF LOADING
                    if (_homeC.product.value == emptyProduct) {
                      return Column(
                        children: List.generate(
                          3,
                          (index) => const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: ProductShimmerWidget(),
                          ),
                        ),
                      );
                    }

                    // SHOW ERROR MESSAGE IF FAILED FETCH API
                    if (_homeC.product.value.errorMessage.isNotEmpty) {
                      return Center(
                        child: Text(
                          _homeC.product.value.errorMessage,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color.fromARGB(255, 141, 106, 3),
                          ),
                        ),
                      );
                    }

                    // STATE IF DATA IS FETCH API IS SUCCESSED
                    return Column(
                      children: List.generate(
                        _homeC.product.value.data.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: ProductCardWidget(
                            data: _homeC.product.value.data[index],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottonNavbarWidget(
          indexNavbar: _homeC.indexNavbar.value,
          onTap: _homeC.onChangeNavbar,
        ),
      ),
    );
  }
}
