import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
              'Edit Profile',
              style: TextStyle(fontSize: 18,fontFamily: "Poppins", fontWeight: FontWeight.w600),
            ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('lib/images/moore_logo_bw.png'), 
              ),
            ),
            const SizedBox(height: 16),
            
            const Text(
              'Name',
              style: TextStyle(fontSize: 16,fontFamily: "Poppins", fontWeight: FontWeight.w600),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your name',
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: "Poppins"),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
            ),
            const SizedBox(height: 16),
            
            const Text(
              'Email',
              style: TextStyle(fontSize: 16,fontFamily: "Poppins", fontWeight: FontWeight.w600),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: "Poppins"),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
            ),
            const SizedBox(height: 16),
            
            const Text(
              'Phone Number',
              style: TextStyle(fontSize: 16,fontFamily: "Poppins", fontWeight: FontWeight.w600),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: "Poppins"),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
            ),
            const SizedBox(height: 16),
            
            Center(
              child: ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text('Save Changes'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
