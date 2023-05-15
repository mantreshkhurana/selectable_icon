# Selectable Box

[![GitHub stars](https://img.shields.io/github/stars/mantreshkhurana/selectable_icon.svg?style=social)](https://github.com/mantreshkhurana/selectable_icon)
[![pub package](https://img.shields.io/pub/v/selectable_icon.svg)](https://pub.dartlang.org/packages/selectable_icon)

Use `SelectableIcon` to create a selectable box in your flutter app, `SelectableIcon` comes with a lot of customization options mentioned below.
Convert any widget into a selectable box.

![Screenshot](https://raw.githubusercontent.com/mantreshkhurana/selectable_icon/stable/screenshots/screenshot-1.png)

## Installation

Add `selectable_icon: ^1.0.4` in your project's pubspec.yaml:

```yaml
dependencies:
  selectable_icon: ^1.0.4
```

## Usage

Import `selectable_icon` in your dart file:

```dart
import 'package:selectable_icon/selectable_icon.dart';
```

Then use `SelectableIcon` in your widget tree:

```dart
bool isSelected = false;
int count = 0;

SelectableIcon(
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
  selectedIcon: Icons.thumb_up,
  unSelectedIcon: Icons.thumb_up,
  size: 70,
  selectedColor: Colors.blue,
  unSelectedColor: Colors.grey,
  count: count,
  showCount: true,
  animationDuration: const Duration(milliseconds: 500),
  padding: const EdgeInsets.all(10),
),
```
