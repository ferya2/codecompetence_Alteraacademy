import 'package:code_competence_1/screens/page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1Content extends StatelessWidget {
  final double height;

  Page1Content({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height, // Gunakan tinggi yang telah ditetapkan
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/coffe2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 230),
              Text(
                'Welcome to Waraga Coffee',
                style: GoogleFonts.pacifico(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                '"Nikmati berbagai pilihan kopi terbaik kami"',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 300),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2Content()),
                  );
                },
                child: Text('See Detail Menu'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.brown, // Warna latar belakang tombol
                  textStyle: GoogleFonts.poppins(
                      fontSize: 15), // Gaya font untuk tombol
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
