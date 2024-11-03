import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Image.asset(
              'lib/images/moore_logo_bw.png',
              height: 200,
              width: 200,
            ),
            const Text(
              "Moore Apps",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 48),

            //Button
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage())
                ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    "Go Out",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
