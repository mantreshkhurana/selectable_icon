import 'package:flutter/material.dart';
import 'package:selectable_icon/selectable_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSelected = true;
  bool isSelected2 = true;
  bool isSelected3 = true;
  bool isSelected4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SelectableIcon(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              isSelected: isSelected,
            ),
          ),
          SelectableIcon(
            onTap: () {
              setState(() {
                isSelected2 = !isSelected2;
              });
            },
            isSelected: isSelected2,
            selectedIcon: Icons.check_circle,
            unSelectedIcon: Icons.check_circle,
            size: 50,
          ),
          SelectableIcon(
            onTap: () {
              setState(() {
                isSelected3 = !isSelected3;
              });
            },
            isSelected: isSelected3,
            selectedIcon: Icons.thumb_up,
            unSelectedIcon: Icons.thumb_up,
            size: 70,
            selectedColor: Colors.blue,
            unSelectedColor: Colors.grey,
            count: 10,
            animationDuration: const Duration(milliseconds: 500),
            padding: const EdgeInsets.all(10),
          ),
          SelectableIcon(
            onTap: () {
              setState(() {
                isSelected4 = !isSelected4;
              });
            },
            isSelected: isSelected4,
            selectedIcon: Icons.thumb_down,
            unSelectedIcon: Icons.thumb_down,
            size: 80,
            selectedColor: Colors.blue,
            unSelectedColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
