import 'package:code_competence_2/screens/page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1Content extends StatelessWidget {
  final double height;

  const Page1Content({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height, // Gunakan tinggi yang telah ditetapkan
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/coffe2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Menggunakan LayoutBuilder untuk mengakses lebar layar saat ini
          final screenWidth = constraints.maxWidth;

          return SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: screenHeightFraction(
                          0.2)), // Sesuaikan dengan fraksi tinggi layar
                  Text(
                    'Welcome to Waraga Coffee',
                    style: GoogleFonts.pacifico(
                        fontSize: fontSizeBasedOnWidth(screenWidth),
                        color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '"Nikmati berbagai pilihan kopi terbaik kami"',
                    style: GoogleFonts.poppins(
                      fontSize: fontSizeBasedOnWidth(screenWidth),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                      height: screenHeightFraction(
                          0.3)), // Sesuaikan dengan fraksi tinggi layar
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Page2Content()),
                      );
                    },
                    child: Text('See Detail Menu'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown, // Warna latar belakang tombol
                      textStyle: GoogleFonts.poppins(
                          fontSize: fontSizeBasedOnWidth(
                              screenWidth)), // Gaya font untuk tombol
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Fungsi untuk menghitung ukuran font berdasarkan lebar layar
  double fontSizeBasedOnWidth(double width) {
    // Sesuaikan dengan logika Anda
    if (width > 600) {
      return 20.0; // Misalnya, ukuran font 20 untuk layar yang lebih lebar
    } else {
      return 15.0; // Ukuran font default
    }
  }

  // Fungsi untuk menghitung fraksi tinggi layar
  double screenHeightFraction(double fraction) {
    return height * fraction;
  }
}
