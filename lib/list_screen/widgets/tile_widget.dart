import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({
    super.key,
    required this.title,
    required this.description,
    this.imageUrl,
  });

  final String title;
  final String description;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.black)),
              Text(description, style: const TextStyle(color: Colors.black54)),
              const SizedBox(height: 4),
              if (imageUrl != null)
                Center(
                  child: Image.network(
                      imageUrl!
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}