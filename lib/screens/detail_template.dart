// lib/screens/detail_template.dart
// A generic template used by individual veggie screens
import 'package:flutter/material.dart';

class DetailTemplate extends StatelessWidget {
  final String title;
  final String imagePath;

  const DetailTemplate({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.green, size: 30),
                  onPressed: () => Navigator.pop(context),
                ),
                const Icon(Icons.shopping_cart, color: Colors.green, size: 30),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Image.asset(imagePath, height: 250),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 202, 249, 203),
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fresh & Organic\n\$title',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: TextStyle(color: Colors.green),
                  ),
                  // ... add quantity selector and button here
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}