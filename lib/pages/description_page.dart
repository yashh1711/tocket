import 'package:flutter/material.dart';
import 'package:tocket/classes/item_class.dart';
import 'package:tocket/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double paraTextSize = 14;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('This is a SnackBar'),
                  backgroundColor: Colors.deepPurple,
                  behavior: SnackBarBehavior.floating,
                  duration: Duration(seconds: 2),
                ),
              );
            },
            icon: const Icon(
              Icons.info,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(constVal10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: constVal10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        paraTextSize = 14;
                      });
                    },
                    child: const Text('Small Text'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        paraTextSize = 18;
                      });
                    },
                    child: const Text('Medium Text'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        paraTextSize = 22;
                      });
                    },
                    child: const Text('Large Text'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        paraTextSize = 26;
                      });
                    },
                    child: const Text('Huge Text'),
                  ),
                ],
              ),
              Text(
                widget.box.title,
                style: const TextStyle(
                    fontSize: 25.0, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: constVal20,
              ),
              Text(placeholder,
                  style: TextStyle(
                    fontSize: paraTextSize,
                  ),
                  textAlign: TextAlign.justify),
            ],
          ),
        ),
      ),
    );
  }
}
