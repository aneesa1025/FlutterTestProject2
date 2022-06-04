import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test/pages/intro_pages/second_page.dart';
import 'package:test/pages/intro_pages/third_page.dart';

import 'first_page.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          children: const [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
        // dot indicator
        // ignore: avoid_unnecessary_containers
        Container(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(controller: _controller, count: 3))
      ]),
    );
  }
}
