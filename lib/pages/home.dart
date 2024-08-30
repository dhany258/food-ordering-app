import 'package:aplikasi_makanan/widgets/food_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              const SizedBox(height: 20),
              _searchBar(),
              const SizedBox(
                height: 20,
              ),
              _cardList(
                  title: "Top Rated Food",
                  itemHeight: 184,
                  itemBuilder: (context, index) {
                    final foodItems = [
                      {
                        "imageUrl": 'assets/images/batagor.png',
                        "name": 'Batagor Bandung',
                        "price": 'Rp 10.000'
                      },
                      {
                        "imageUrl": 'assets/images/milkshake.png',
                        "name": 'Milkshake',
                        "price": 'Rp 15.000'
                      },
                      {
                        "imageUrl": 'assets/images/hamburger.png',
                        "name": 'Hamburger',
                        "price": 'Rp 20.000'
                      },
                      {
                        "imageUrl": 'assets/images/milkshake.png',
                        "name": 'Milkshake',
                        "price": 'Rp 12.000'
                      },
                    ];
                    return FoodCardWidget(
                      imageUrl: foodItems[index]["imageUrl"]!,
                      name: foodItems[index]["name"]!,
                      price: foodItems[index]["price"]!,
                    );
                  }),
              const SizedBox(height: 16),
              Text(
                "Near Restaurant",
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff000000)),
              ),
              const SizedBox(height: 16),
              _restaurantCard(
                  imageUrl: "assets/images/mie_gacoan.png",
                  restaurantName: 'Mie Gacoan',
                  description: 'Restaurant Mie, Take Away, Jajanan',
                  rating: '4.5',
                  reviews: '200',
                  distance: '2'),
              const SizedBox(height: 16),
              _restaurantCard(
                  imageUrl: "assets/images/all_u_can_eat.jpg",
                  restaurantName: 'All U Can Eat',
                  description: 'Restaurant daging, Grild, Japanese Food',
                  rating: '4.3',
                  reviews: '300',
                  distance: '2.5'),
              const SizedBox(height: 16),
              _restaurantCard(
                  imageUrl: "assets/images/kfc.jpg",
                  restaurantName: 'KFC Restaurant',
                  description: 'Restaurant Ayam, Take Away, Jajanan',
                  rating: '4.6',
                  reviews: '350',
                  distance: '2.7'),
              const SizedBox(height: 16),
              _restaurantCard(
                  imageUrl: "assets/images/gacoan.jpg",
                  restaurantName: 'Mie Gacoan',
                  description: 'Restaurant Mie, Take Away, Jajanan',
                  rating: '4.2',
                  reviews: '250',
                  distance: '3'),
              const SizedBox(height: 16),
              _restaurantCard(
                  imageUrl: "assets/images/mixue.jpg",
                  restaurantName: 'Mixue',
                  description: 'Ice Cream, Take Away, Jajanan',
                  rating: '4.8',
                  reviews: '250',
                  distance: '3'),
              const SizedBox(height: 16),
              _restaurantCard(
                  imageUrl: "assets/images/ramen.jpeg",
                  restaurantName: 'Ramen Iciraku',
                  description: 'Masakan Jepang, Take Away, Jajanan',
                  rating: '4.8',
                  reviews: '250',
                  distance: '3'),
            ],
          ),
        )),
      ),
    );
  }

  Column _restaurantCard(
      {required String imageUrl,
      required String restaurantName,
      required String description,
      required String rating,
      required String reviews,
      required String distance}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(height: 4),
        Text(
          restaurantName,
          style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xff000000)),
        ),
        const SizedBox(height: 2),
        Text(
          description,
          style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xff848181)),
        ),
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.star, color: Colors.orange, size: 16),
                Text(
                  '$rating ',
                  style: GoogleFonts.inter(
                      fontSize: 12, fontWeight: FontWeight.w300),
                ),
                Text(' $reviews reviews',
                    style: GoogleFonts.inter(
                        fontSize: 12, fontWeight: FontWeight.w300)),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.watch_later,
                    color: Color(0xff010F07), size: 16),
                Text("$distance km",
                    style: GoogleFonts.inter(
                        fontSize: 12, fontWeight: FontWeight.w300)),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column _cardList(
      {required String title,
      double? itemHeight,
      required NullableIndexedWidgetBuilder itemBuilder}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF000000))),
        const SizedBox(height: 16),
        SizedBox(
            height: itemHeight,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: itemBuilder,
                separatorBuilder: (context, index) =>
                    const Padding(padding: EdgeInsets.only(right: 16)),
                itemCount: 4)),
      ],
    );
  }

  Row _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "jalan kemanggisan raya",
              style: GoogleFonts.inter(fontSize: 14, color: Colors.orange),
            ),
          ],
        ),
        const Icon(
          Icons.notifications_none,
          size: 32.0,
        ),
      ],
    );
  }

  TextField _searchBar() {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search Food, Restaurant, etc',
          hintStyle: const TextStyle(fontSize: 14, color: Color(0xFF9B9B9B)),
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xFF848181),
            weight: 18,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
