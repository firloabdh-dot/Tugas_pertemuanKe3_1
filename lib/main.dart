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
              Film(judulFilm: 'Seven Samurai'),
              SizedBox(height: 20),
              Film(judulFilm: 'RAN'),
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
      style: const TextStyle(fontSize: 18),
    );
  }
}