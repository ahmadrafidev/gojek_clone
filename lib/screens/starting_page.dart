import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingPage extends StatelessWidget {
  static const routeName = '/starting_page';
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 65.0,
                backgroundImage: ExactAssetImage('assets/images/gojek.png'),
                backgroundColor: Colors.transparent,
              ),
              Text('gojek',
                  style: GoogleFonts.mavenPro(
                      fontSize: 48, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tabs_screen');
                },
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
