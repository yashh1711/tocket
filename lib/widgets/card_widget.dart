import 'package:flutter/material.dart';
import 'package:tocket/classes/item_class.dart';
import 'package:tocket/core/constants.dart';
import 'package:tocket/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(box: box);
            },
          ),
        );
      },
      child: Card(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(box.imagePath),
              Text(
                box.title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(box.description),
              const SizedBox(height: constVal10),
            ],
          ),
        ),
      ),
    );
  }
}
