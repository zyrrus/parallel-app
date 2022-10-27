import 'package:flutter/material.dart';
import 'package:parallel/widgets/form/text.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PText("Header 1", level: 1),
            PText("This is body text"),
            PText("Header 2", level: 2),
            PText("This is body text"),
            PText("Header 3", level: 3),
            PText("This is body text"),
            PText("Header 4", level: 4),
            PText("This is body text"),
          ],
        ),
      ),
    );
  }
}
