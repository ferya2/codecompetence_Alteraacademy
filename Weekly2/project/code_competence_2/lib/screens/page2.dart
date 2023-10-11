import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2Content extends StatelessWidget {
  const Page2Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[400],
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text('Top Menu Drink & Food',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            MenuCard(
              itemName: 'Espresso',
              itemDescription:
                  'A strong black coffee made by forcing steam through ground coffee beans.',
              itemPrice: '\$2.99',
              imageUrl: 'images/espresso.jpg',
            ),
            MenuCard(
              itemName: 'Cappuccino',
              itemDescription:
                  'Espresso mixed with steamed milk and topped with a layer of frothed milk.',
              itemPrice: '\$3.49',
              imageUrl: 'images/cappuccino.jpg',
            ),
            MenuCard(
              itemName: 'Latte',
              itemDescription:
                  'Espresso mixed with steamed milk and topped with a small amount of frothed milk.',
              itemPrice: '\$3.99',
              imageUrl: 'images/latte.jpg',
            ),
            MenuCard(
              itemName: 'Steak',
              itemDescription:
                  'A steak is a thick cut of meat generally sliced across the muscle fibers, sometimes including a bone.',
              itemPrice: '\$3.99',
              imageUrl: 'images/steak.jpg',
            ),
            MenuCard(
              itemName: 'Fried Rice',
              itemDescription:
                  'Fried rice is a traditional Chinese preparation of cooked rice, vegetables, protein, soy sauce, and aromatics.',
              itemPrice: '\$3.99',
              imageUrl: 'images/friedrice.jpg',
            ),
            MenuCard(
              itemName: 'Chiken Chesse',
              itemDescription:
                  'Spicy minced chicken balls oozing out cheese is quite the crowd-pleaser.',
              itemPrice: '\$3.99',
              imageUrl: 'images/chickenchese.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String itemName;
  final String itemDescription;
  final String itemPrice;
  final String imageUrl;

  MenuCard({
    required this.itemName,
    required this.itemDescription,
    required this.itemPrice,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  itemDescription,
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
                SizedBox(height: 8),
                Text(
                  'Price: $itemPrice',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
