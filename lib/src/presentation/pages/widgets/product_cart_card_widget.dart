import 'package:aos/src/domain/entities/data_product/data_product.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../../utils/constanta.dart';

class ProductCartCardWidget extends StatelessWidget {
  const ProductCartCardWidget({
    super.key,
    required this.data,
    required this.increase,
    required this.decrease,
  });

  final DataProduct data;
  final Function() increase;
  final Function() decrease;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      padding: const EdgeInsets.all(14.0),
      margin: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: data.productPhoto,
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
          const SizedBox(
            width: 12,
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data.productName,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  currencyFormatter
                      .format(int.parse(data.productValue) * 0.000065),
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              InkWell(
                onTap: () => increase(),
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data.qty.toString(),
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => decrease(),
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black45,
                  ),
                  child: const Icon(
                    Icons.remove_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
