import 'package:flutter/material.dart';

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
