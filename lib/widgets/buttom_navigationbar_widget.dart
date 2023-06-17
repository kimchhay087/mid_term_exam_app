import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final List<CustomNavigationBarItem> items;
  final ValueChanged<int> onTap;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Color backgroundColor;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
    required this.selectedItemColor,
    required this.unselectedItemColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            widget.items.length,
                (index) => GestureDetector(
              onTap: () => widget.onTap(index),
              child: CustomBottomNavigationBarItem(
                item: widget.items[index],
                isSelected: index == widget.currentIndex,
                selectedLabelColor: widget.selectedItemColor,
                unselectedLabelColor: widget.unselectedItemColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomNavigationBarItem {
  final Icon icon;
  final String label;

  CustomNavigationBarItem({required this.icon, required this.label});
}

class CustomBottomNavigationBarItem extends StatelessWidget {
  final CustomNavigationBarItem item;
  final bool isSelected;
  final Color selectedLabelColor;
  final Color unselectedLabelColor;

  const CustomBottomNavigationBarItem({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.selectedLabelColor,
    required this.unselectedLabelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconTheme(
          data: IconThemeData(
            color: isSelected ? selectedLabelColor : unselectedLabelColor,
          ),
          child: item.icon,
        ),
        Text(
          item.label,
          style: TextStyle(
            color: isSelected ? selectedLabelColor : unselectedLabelColor,
          ),
        ),
      ],
    );
  }
}