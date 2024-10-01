import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget {
  final int size;
  final bool isSelected;

  const SizeButton({
    super.key,
    required this.size,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      margin: EdgeInsets.only(
        right: MediaQuery.sizeOf(context).width * 0.01,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
        border: Border.all(
          color: isSelected ? Colors.white : Colors.black38,
        ),
        color: isSelected
            ? Theme.of(context).colorScheme.primary
            : Colors.transparent,
      ),
      child: Text(
        size.toString(),
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black38,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
