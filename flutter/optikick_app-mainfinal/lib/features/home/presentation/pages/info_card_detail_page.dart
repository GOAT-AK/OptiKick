import 'package:flutter/material.dart';

class InfoCardDetailPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const InfoCardDetailPage({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Hero(
              tag: 'infoCard_$title',
              child: Image.asset(imagePath, height: 200),
            ),
            const SizedBox(height: 24),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
