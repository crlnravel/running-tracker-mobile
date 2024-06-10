import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  String name;
  String distance;
  String description;

  ItemDetailPage(
      {super.key,
      required this.name,
      required this.distance,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: Column(
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                  distance
              ),
              const SizedBox(height: 10),
              Text(description),
              ElevatedButton(
                onPressed: () => {
                  Navigator.pop(context)
                },
                child: const Text("Kembali!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
