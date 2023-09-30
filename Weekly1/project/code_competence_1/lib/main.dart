import 'package:code_competence_1/screens/page1.dart';
import 'package:code_competence_1/screens/page2.dart';
import 'package:code_competence_1/screens/page3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => OnePageScroll(),
        '/page2': (context) => Page2Content(),
      },
    ),
  );
}

class OnePageScroll extends StatelessWidget {
  const OnePageScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Waraga Coffe',
            style: GoogleFonts.poppins(fontSize: 17, color: Colors.white)),
        backgroundColor: Colors.brown,
        elevation: 5.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.coffee),
            iconSize: 20,
            onPressed: () {
              // Tambahkan aksi ketika ikon coffee ditekan di sini.
            },
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Page1Content(
                height: MediaQuery.of(context)
                    .size
                    .height), 
            Page2Content(),
            ContactUsPage(),
          ],
        ),
      ),
    );
  }
}





