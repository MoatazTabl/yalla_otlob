import 'package:cached_network_image/cached_network_image.dart';
import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/checkout_button_widget.dart';
import 'widgets/restaurant_menu_item_widget.dart';


class UserRestaurantDetailPage extends StatelessWidget {
  const UserRestaurantDetailPage({super.key, required this.heroTag});

  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bazooka"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Hero(
                    tag: heroTag,
                    child: Center(
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://bcassetcdn.com/public/blog/wp-content/uploads/2019/07/18094837/golden-diner.png",
                        height: 100.w,
                        width: 100.w,
                        imageBuilder: (context, imageProvider) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(image: imageProvider),
                          );
                        },
                      ),
                    ),
                  ),
                  Text(
                    "Bazooka",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black87),
                  ),
                  Text(
                    "Bazooka is a great restaurant that offers fried chicken, sandwich and more",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      getAppLocalizations(context)!.menu,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black87,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const RestaurantMenuItem(
                    itemMenuPic:
                        "https://atsloanestable.com/wp-content/uploads/2023/06/new-york-style-pizza2.jpg",
                  );
                },
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: const [
        CheckOutButtonWidget()
      ],
    );
  }
}

