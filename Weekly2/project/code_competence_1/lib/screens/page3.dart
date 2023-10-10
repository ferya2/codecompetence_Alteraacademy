import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[400], // Warna latar belakang
      padding: const EdgeInsets.all(16.0),
      child: ContactForm(),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Contact Us',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white, // Latar belakang putih
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.black, // Warna label teks
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                  style: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
              const SizedBox(width: 16), // Spacer
              Expanded(
                child: TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white, // Latar belakang putih
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.black, // Warna label teks
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                  style: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white, // Latar belakang putih
              labelStyle: GoogleFonts.poppins(
                color: Colors.black, // Warna label teks
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              // Anda dapat menambahkan validasi email di sini
              return null;
            },
            style: GoogleFonts.poppins(color: Colors.black),
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: _messageController,
            maxLines: 5, // TextArea dengan 5 baris
            decoration: InputDecoration(
              labelText: 'Message',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white, // Latar belakang putih
              labelStyle: GoogleFonts.poppins(
                color: Colors.black, // Warna label teks
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your message';
              }
              return null;
            },
            style: GoogleFonts.poppins(color: Colors.black),
          ),
          SizedBox(height: 25),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final firstName = _firstNameController.text;
                  final lastName = _lastNameController.text;
                  final email = _emailController.text;
                  final message = _messageController.text;

                  _firstNameController.clear();
                  _lastNameController.clear();
                  _emailController.clear();
                  _messageController.clear();

                  print('First Name: $firstName');
                  print('Last Name: $lastName');
                  print('Email: $email');
                  print('Message: $message');
                }
              },
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                primary: Colors.brown, // Warna latar belakang tombol
                textStyle: GoogleFonts.poppins(
                  fontSize: 15, // Ukuran teks tombol
                  color: Colors.white, // Warna teks tombol
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }
}
