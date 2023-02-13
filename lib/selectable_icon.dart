// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

/// A widget that can be selected and deselected.
class SelectableIcon extends StatelessWidget {
  /// Size of [SelectableIcon] widget.
  final double size;

  /// Padding of the box.
  final EdgeInsetsGeometry padding;

  /// Duration of the animation in [SelectableIcon] widget.
  final Duration animationDuration;

  /// Icon to be displayed when the [SelectableIcon] widget is selected.
  final selectedIcon;

  /// Icon to be displayed when the [SelectableIcon] widget is not selected.
  final unSelectedIcon;

  final Color selectedColor;

  final Color unSelectedColor;

  /// Count of the [SelectableIcon] widget.
  final int count;

  /// Callback when the [SelectableIcon] widget is tapped.
  final VoidCallback onTap;

  /// Whether the [SelectableIcon] widget is selected or not.
  final bool isSelected;

  const SelectableIcon({
    Key? key,
    this.size = 20,
    this.count = 0,
    this.padding = const EdgeInsets.all(8),
    this.animationDuration = const Duration(milliseconds: 200),
    this.selectedIcon = Icons.favorite,
    this.selectedColor = Colors.red,
    this.unSelectedIcon = Icons.favorite,
    this.unSelectedColor = Colors.grey,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedOpacity(
        duration: animationDuration,
        opacity: isSelected ? 1 : 0.5,
        child: SizedBox(
          child: Padding(
            padding: padding,
            child: isSelected
                ? Icon(
                    selectedIcon,
                    size: size,
                    color: selectedColor,
                  )
                : Icon(
                    unSelectedIcon,
                    size: size,
                    color: unSelectedColor,
                  ),
          ),
        ),
      ),
    );
  }
}
