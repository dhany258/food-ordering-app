import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverWidget extends StatelessWidget {
  const DiscoverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Restaurant",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.map,
                    size: 32,
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/maps.png'),
                  fit: BoxFit.cover,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
