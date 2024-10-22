import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: heroTag,
              child: Center(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/restaurant-logo%2Crestaurant-icon-logo-free-design-template-e4e92c7d3b5631a777fce7a5d629a00a_screen.jpg?ts=1662468709",
                  height: 100,
                  width: 100,
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
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Theme.of(context).brightness==Brightness.dark?Colors.white:Colors.black87),
            ),
            const Text("Bazooka is a great restaurant that offers fried chicken, sandwich and more" ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Menu",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: Theme.of(context).brightness==Brightness.dark?Colors.white:Colors.black87),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xffE5E4E2),
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.88),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200.h,
                      margin: const EdgeInsets.all(4),
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                "https://atsloanestable.com/wp-content/uploads/2023/06/new-york-style-pizza2.jpg",
                            fit: BoxFit.fill,
                            imageBuilder: (context, imageProvider) {
                              return SizedBox(
                                height: 140.h,
                                width: 130.w,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image(
                                    image: imageProvider,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            },
                          ),
                          Text(
                            "Pizza Chicken Ranch",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black87),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                               Text("180 EGP",
                                  style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black87)),
                              Container(
                                height: 50.h,
                                width: 50.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.grey,)),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                    onPressed: () {}, icon: const Icon(Icons.add,color: Colors.black87,)),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
