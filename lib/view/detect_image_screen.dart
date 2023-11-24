import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:tapday_project/extension/sizedbox.dart';

class DetectNetworkImageScreen extends StatelessWidget {
  final String imageUrl =
      "https://images.ctfassets.net/hrltx12pl8hq/3Z1N8LpxtXNQhBD5EnIg8X/975e2497dc598bb64fde390592ae1133/spring-images-min.jpg";

  const DetectNetworkImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Detector'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              imageUrl,
            ),
            20.ph,
            Center(
              child: ElevatedButton(
                onPressed: () {
                  analyzeImage(imageUrl);
                },
                child: const Text('Detect Image'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void analyzeImage(String imageUrl) async {
    try {
      PaletteGenerator paletteGenerator =
          await PaletteGenerator.fromImageProvider(NetworkImage(
        imageUrl,
      ));

      Color dominantColor =
          paletteGenerator.dominantColor?.color ?? Colors.transparent;
      bool isDark = dominantColor.computeLuminance() < 0.5;

      if (isDark) {
        log('The image is mostly dark.');
      } else {
        log('The image is mostly light.');
      }
    } catch (e) {
      log('Error analyzing image: $e');
    }
  }
}
