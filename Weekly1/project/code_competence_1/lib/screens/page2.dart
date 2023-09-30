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
            Text('Coffe Menu',
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.white)),
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
              itemName: 'Black Coffe',
              itemDescription:
                  'black coffee is a type of black coffee drink that produces a super bitter & sensitive coffee flavor.',
              itemPrice: '\$3.99',
              imageUrl: 'images/blackcoffe.jpg',
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
