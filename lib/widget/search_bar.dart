import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

Widget searchBar(BuildContext context) {
  return FloatingSearchBar(
    hint: 'Find services, food, or place',
    backgroundColor: Colors.grey.shade100,
    borderRadius: BorderRadius.circular(25),
    openAxisAlignment: 0.0,
    axisAlignment: 0.0,
    elevation: 2,
    physics: const BouncingScrollPhysics(),
    transitionCurve: Curves.easeInOut,
    transitionDuration: const Duration(milliseconds: 500),
    transition: CircularFloatingSearchBarTransition(),
    debounceDelay: const Duration(milliseconds: 500),
    actions: [
      FloatingSearchBarAction(
        showIfOpened: false,
        child: CircularButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            print('Places Pressed');
          },
        ),
      ),
      FloatingSearchBarAction.searchToClear(
        showIfClosed: false,
      ),
    ],
    builder: (context, transition) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Material(
          color: Colors.white,
          child: Container(
            height: 200.0,
            color: Colors.grey.shade100,
            child: Column(
              children: const [
                ListTile(
                  title: Text('Home'),
                  subtitle: Text('more info here........'),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
