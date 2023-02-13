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
  bool isSelected = false;
  int count = 0;

  bool isSelected2 = false;
  int count2 = 0;

  bool isSelected3 = false;
  int count3 = 0;

  bool isSelected4 = false;
  int count4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SelectableIcon(
              count: count,
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                  if (isSelected) {
                    count++;
                  } else {
                    count--;
                  }
                });
              },
              isSelected: isSelected,
            ),
          ),
          SelectableIcon(
            count: count2,
            onTap: () {
              setState(() {
                isSelected2 = !isSelected2;
                if (isSelected2) {
                  count2++;
                } else {
                  count2--;
                }
              });
            },
            isSelected: isSelected2,
            selectedIcon: Icons.check_circle,
            unSelectedIcon: Icons.check_circle,
            size: 50,
          ),
          SelectableIcon(
            count: count3,
            onTap: () {
              setState(() {
                isSelected3 = !isSelected3;
                if (isSelected3) {
                  count3++;
                } else {
                  count3--;
                }
              });
            },
            isSelected: isSelected3,
            selectedIcon: Icons.thumb_up,
            unSelectedIcon: Icons.thumb_up,
            size: 70,
            selectedColor: Colors.blue,
            unSelectedColor: Colors.grey,
            animationDuration: const Duration(milliseconds: 500),
            padding: const EdgeInsets.all(10),
          ),
          SelectableIcon(
            count: count4,
            onTap: () {
              setState(() {
                isSelected4 = !isSelected4;
                if (isSelected4) {
                  count4++;
                } else {
                  count4--;
                }
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
