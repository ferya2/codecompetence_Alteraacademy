import 'package:code_competence_2/screens/page1.dart';
import 'package:code_competence_2/screens/page2.dart';
import 'package:code_competence_2/screens/page3.dart';
import 'package:code_competence_2/screens/page4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const OnePageScroll(),
        '/contact': (context) => const Page2Content(),
        '/about': (context) => AboutUsPage(),
      },
    ),
  );
}

class OnePageScroll extends StatefulWidget {
  const OnePageScroll({super.key});

  @override
  _OnePageScrollState createState() => _OnePageScrollState();
}

class _OnePageScrollState extends State<OnePageScroll> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _closeDrawerAndNavigate(BuildContext context, String routeName) {
    Navigator.pop(context); // Tutup sidebar
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Waraga Coffee',
          style: GoogleFonts.poppins(fontSize: 17, color: Colors.white),
        ),
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
              height: MediaQuery.of(context).size.height,
            ),
            const Page2Content(),
            const ContactUsPage(),
            AboutUsPage(),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Waraga Coffee'),
              accountEmail: Text('contact@waragacoffee.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/logo.png'),
              ),
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                _closeDrawerAndNavigate(context,
                    '/contact'); // Menutup drawer dan navigasi ke '/contact'
              },
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                _closeDrawerAndNavigate(context,
                    '/about'); // Menutup drawer dan navigasi ke '/about'
              },
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.pop(context); // Hanya menutup drawer tanpa navigasi
              },
            ),
          ],
        ),
      ),
    );
  }
}
