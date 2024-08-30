import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCardWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;

  const FoodCardWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 134,
            height: 134,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageUrl)))),
        const SizedBox(height: 4),
        Text(
          name,
          style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: const Color(0xff000000)),
        ),
        const SizedBox(height: 4),
        Text(
          price,
          style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: const Color(0xff000000)),
        ),
      ],
    );
  }
}
