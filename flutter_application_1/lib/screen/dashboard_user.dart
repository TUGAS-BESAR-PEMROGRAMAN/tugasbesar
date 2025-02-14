import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

class DashboardUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF86E18),
              Color(0xFFFFFBF6),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/57899334?v=4'),
                  ),
                ),
              ),
              SizedBox(height: 15),
              FadeInDown(
                delay: Duration(milliseconds: 200),
                child: Text(
                  'Hello, Muhammad Qinthar',
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              FadeInDown(
                delay: Duration(milliseconds: 300),
                child: Text(
                  'Customer',
                  style:
                      GoogleFonts.poppins(color: Colors.white70, fontSize: 16),
                ),
              ),
              FadeInDown(
                delay: Duration(milliseconds: 400),
                child: Text(
                  'Welcome!',
                  style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildAnimatedCard('Keranjang Anda', '3 Items',
                        Icons.shopping_cart, Colors.green),
                    _buildAnimatedCard('Notifikasi', '2 New Messages',
                        Icons.notifications, Colors.orange),
                  ],
                ),
              ),
              SizedBox(height: 40),
              ZoomIn(
                delay: Duration(milliseconds: 500),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add, size: 30, color: Colors.white),
                  backgroundColor: Colors.blueAccent,
                  elevation: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedCard(
      String title, String subtitle, IconData icon, Color iconColor) {
    return GestureDetector(
      onTap: () {},
      child: BounceInUp(
        child: Container(
          width: 140,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 3,
              ),
            ],
          ),
          child: Column(
            children: [
              Icon(icon, color: iconColor, size: 40),
              SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(height: 6),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Compare this snippet from lib/screen/login.dart: