import 'package:flutter/material.dart';

class BigImage extends StatelessWidget {
  final String imageUrl;

  const BigImage({
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Image.asset(imageUrl),
        ),
      ),
    );
  }
}
