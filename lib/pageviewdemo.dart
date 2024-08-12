import 'package:flutter/material.dart';

// Page One
class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.indigo,
      child: const Text(
        'Page 1',
        style: TextStyle(fontSize: 50, color: Colors.white),
      ),
    );
  }
}
// Page Two
class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: const Text(
          'Page 2',
          style: TextStyle(fontSize: 50, color: Colors.white),
        ));
  }
}
// Page Three
class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.amber,
        child: const Text(
          'Page 3',
          style: TextStyle(fontSize: 50, color: Colors.black),));}
}

class pageviewdemo extends StatefulWidget {
  const pageviewdemo({super.key});

  @override
  State<pageviewdemo> createState() => _pageviewdemoState();
}

class _pageviewdemoState extends State<pageviewdemo> {
  final PageController _pageController =
  PageController(initialPage: 0, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [PageOne(), PageTwo(), PageThree()],
      ),
    );
  }

  // Dispose the PageController
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

}