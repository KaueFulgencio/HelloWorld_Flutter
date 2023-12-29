import 'package:flutter/material.dart';

class DemoBottomAppBar extends StatelessWidget {
  const DemoBottomAppBar({
    Key? key, 
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
    required this.onIconPressed,
  }) : super(key: key); 

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;
  final VoidCallback onIconPressed;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Dados',
              icon: const Icon(Icons.person),
              onPressed: onIconPressed, 
            ),
          ],
        ),
      ),
    );
  }
}