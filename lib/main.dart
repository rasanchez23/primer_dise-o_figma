import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 300,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 85, 7, 121),
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 300,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 85, 7, 121),
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Register'),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 300,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 85, 7, 121),
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Forgot Password'),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 300,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 85, 7, 121),
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Help'),
                ),
              ),
              SizedBox(height: 32),
              SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 56,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Color.fromARGB(255, 36, 8, 192),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                          elevation: 4,
                        ),
                        child: FaIcon(FontAwesomeIcons.facebookF, color: Colors.white, size: 28),
                      ),
                    ),
                    SizedBox(
                      width: 56,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Color.fromARGB(255, 0, 0, 0),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                          elevation: 4,
                        ),
                        child: FaIcon(FontAwesomeIcons.xTwitter, color: Colors.white, size: 28),
                      ),
                    ),
                    SizedBox(
                      width: 56,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Color.fromARGB(255, 6, 100, 223),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                          elevation: 4,
                        ),
                        child: FaIcon(FontAwesomeIcons.linkedinIn, color: Colors.white, size: 28),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BotonPersonalizado extends StatelessWidget{
  final String texto;
  final VoidCallback? onPressed;

  const BotonPersonalizado({
    super.key,
    required this.texto,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 85, 7, 121),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withValues(
                alpha: 0.67
              ),
              offset: const Offset(0, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Text(
          texto,
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
