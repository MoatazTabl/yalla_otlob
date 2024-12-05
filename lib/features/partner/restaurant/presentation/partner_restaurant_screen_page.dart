import 'package:yalla_otlob/features/partner/restaurant/presentation/partner_restaurant_active_orders_page.dart';
import 'package:yalla_otlob/features/partner/restaurant/presentation/partner_restaurant_history_page.dart';
import 'package:yalla_otlob/features/partner/restaurant/presentation/partner_restaurant_home_page.dart';
import 'package:flutter/material.dart';

class PartnerRestaurantScreenPage extends StatefulWidget {
  const PartnerRestaurantScreenPage({super.key});

  @override
  State<PartnerRestaurantScreenPage> createState() =>
      _PartnerRestaurantScreenPageState();
}

class _PartnerRestaurantScreenPageState
    extends State<PartnerRestaurantScreenPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),),
      body: IndexedStack(
        index: currentIndex,
        children: const [
          PartnerRestaurantHomePage(),
          PartnerRestaurantActiveOrdersPage(),
          PartnerRestaurantHistoryPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
          });
          currentIndex=value;

        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
