import 'package:flutter/material.dart';

void main() {
  runApp(const Directur());
}

class Directur extends StatelessWidget {
  const Directur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Koleksi Film Kurosawa',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Film(judulFilm: 'Seven Samurai'),
              SizedBox(height: 5),
              Text(
                'Rating: OMAGATTT MASTERPIECE!!!!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),
              Film(judulFilm: 'RAN'),
              SizedBox(height: 5),
              Text(
                'Status: Restorasi 4K Tersedia',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Film extends StatelessWidget {
  static const String namaSutradara = 'Akira Kurosawa';
  final String judulFilm;
  const Film({super.key, required this.judulFilm});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Film $judulFilm disutradarai oleh $namaSutradara.',
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}