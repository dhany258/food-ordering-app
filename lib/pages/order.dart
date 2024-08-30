import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Keranjang",
          style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xff000000)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            _cardOrder(),
            const SizedBox(
              height: 16,
            ),
            _largeButton(context),
            const SizedBox(
              height: 470,
            ),
            _cekout()
          ],
        ),
      ),
    );
  }

  Row _cekout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Harga",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Rp. 15.000",
              style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff000000)),
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFBBC04),
            foregroundColor: Colors.white,
          ),
          onPressed: () {},
          child: const Text("Pesan"),
        ),
      ],
    );
  }

  SizedBox _largeButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Color(0xffFBBC04),
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.transparent,
        ),
        child: Text(
          "+ Tambah Menu Lain",
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: const Color(0xffFBBC04),
          ),
        ),
      ),
    );
  }

  Row _cardOrder() {
    return Row(
      children: [
        Container(
          height: 96,
          width: 96,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/milkshake.png'),
            fit: BoxFit.cover,
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          child: Container(
            width: 275,
            height: 97,
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.black))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Milkshake",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff000000)),
                      ),
                      Text(
                        "milksahke 1x",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xff848181)),
                      ),
                      Text(
                        "Rp. 15.000",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffFBBC04)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: Color(0xffFBBC04),
                          )),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.remove, color: Colors.orange),
                          ),
                          const Text('1'),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add, color: Colors.orange),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
