import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../utils/constanta.dart';

class BannerSliderWidget extends StatelessWidget {
  const BannerSliderWidget({
    super.key,
    required this.onSlide,
    required this.indexSlider,
  });

  final Function(int value) onSlide;
  final int indexSlider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: List.generate(
            listSlider.length,
            (index) => SizedBox(
              height: 170,
              width: Get.size.width - 34,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: listSlider[index],
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
          ),
          options: CarouselOptions(
            aspectRatio: 1,
            height: 170,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlay: true,
            viewportFraction: 1,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) => onSlide(index),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: List.generate(
            listSlider.length,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == indexSlider ? Colors.black : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
