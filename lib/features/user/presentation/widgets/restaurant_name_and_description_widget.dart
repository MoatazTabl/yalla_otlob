import 'package:flutter/material.dart';

class RestaurantNameAndDescriptionWidget extends StatelessWidget {
  const RestaurantNameAndDescriptionWidget({
    super.key, required this.restaurantName, required this.restaurantDescription,
  });

  final String restaurantName;
  final String restaurantDescription;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              restaurantName,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              restaurantDescription,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}