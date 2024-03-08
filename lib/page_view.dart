import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              itemBuilder: (context, index) => Container(
                height: 200,
                width: 260,
                decoration: BoxDecoration(
                  color: colors[index],
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(1, 1),
                      spreadRadius: 5,
                      blurRadius: 15,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Color> colors = [
  Colors.amber,
  Colors.blue,
  Colors.greenAccent,
  Colors.cyanAccent
];
