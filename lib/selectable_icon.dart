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

  /// Color of the icon when the [SelectableIcon] widget is selected.
  final Color selectedColor;

  /// Color of the icon when the [SelectableIcon] widget is not selected.
  final Color unSelectedColor;

  /// Style of the text.
  final TextStyle style;

  /// Padding of the text.
  final EdgeInsetsGeometry countPadding;

  /// Count of the [SelectableIcon] widget.
  final int? count;

  /// Callback when the [SelectableIcon] widget is tapped.
  final VoidCallback onTap;

  /// Whether the [SelectableIcon] widget is selected or not.
  final bool isSelected;

  /// Whether to show the count or not.
  final bool showCount;

  const SelectableIcon({
    Key? key,
    this.size = 20,
    this.count,
    this.padding = const EdgeInsets.all(8),
    this.animationDuration = const Duration(milliseconds: 200),
    this.selectedIcon = Icons.favorite,
    this.selectedColor = Colors.red,
    this.unSelectedIcon = Icons.favorite,
    this.unSelectedColor = Colors.grey,
    this.style = const TextStyle(
      fontSize: 14,
      color: Colors.grey,
    ),
    this.countPadding = const EdgeInsets.only(left: 8),
    required this.onTap,
    required this.isSelected,
    this.showCount = true,
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
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        selectedIcon,
                        size: size,
                        color: selectedColor,
                      ),
                      showCount
                          ? Padding(
                              padding: countPadding,
                              child: Text(
                                count.toString(),
                                style: style,
                              ),
                            )
                          : Container(),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        unSelectedIcon,
                        size: size,
                        color: unSelectedColor,
                      ),
                      showCount
                          ? Padding(
                              padding: countPadding,
                              child: Text(
                                count.toString(),
                                style: style,
                              ),
                            )
                          : Container(),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
