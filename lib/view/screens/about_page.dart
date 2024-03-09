import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Logo or Icon
            Center(
              child: Icon(
                Icons.check_circle,
                size: 80,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 20),
            
            // App Name and Description
            const Text(
              'My To-Do App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'A simple and efficient To-Do app to help you stay organized.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // App Version
            const Text(
              'Version 1.0.0',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            // Acknowledgments or Credits
            RichText(text: TextSpan(
              children: <TextSpan>[
                const TextSpan(text: 'Devoleped By :',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                )
                ),
                TextSpan(text: ' Suhail Jafrin',style: GoogleFonts.robotoSerif(color: Colors.teal,fontSize: 20)),
              ]
            )),
            const SizedBox(height: 10),
            
          ],
        ),
      ),
    );
  }
}

