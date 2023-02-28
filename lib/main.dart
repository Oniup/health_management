import "package:flutter/material.dart";
import "package:health_management/pages/home_page.dart";

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Health Management",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: const PageRoot()
    );
  }
}

class PageRoot extends StatefulWidget {
  const PageRoot({super.key});

  @override
  State<PageRoot> createState() => _PageRoot();
}

class _PageRoot extends State<PageRoot> {
  final List<Widget> pages = const [ 
    HomePage() 
  ];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Health Management"),
      ),
      body: pages[pageIndex],
    );
  }
}
