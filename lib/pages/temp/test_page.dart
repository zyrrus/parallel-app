import 'package:flutter/material.dart';
import 'package:parallel/theme.dart';

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
            Text("Header 1", style: Parallel.textStyles.h1()),
            Text("This is body text", style: Parallel.textStyles.p()),
            Text("Header 2", style: Parallel.textStyles.h2()),
            Text("This is body text", style: Parallel.textStyles.p()),
            Text("Header 3", style: Parallel.textStyles.h3()),
            Text("This is body text", style: Parallel.textStyles.p()),
            Text("Header 4", style: Parallel.textStyles.h4()),
            Text("This is body text", style: Parallel.textStyles.p()),
          ],
        ),
      ),
    );
  }
}
