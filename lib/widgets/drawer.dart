import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/image_path.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  //bottomRight: Radius.circular(20),
                  //bottomLeft: Radius.circular(20)),),
                  ),
              color: Colors.blueGrey.withOpacity(0.5),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: 'https://picsum.photos/100/100',
                    errorWidget: (context, url, error) => Image.asset(
                      ImagePath.on_board3,
                      height: 80,
                      width: 80,
                      fit: BoxFit.contain,
                    ),
                    // height: 87,
                  ),
                ),
                const Center(
                  child: Text(
                    "Sishir Acharya",
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DrawerItem(
                  icon: Icons.home,
                  label: 'Home',
                  onPressed: () => Get.back(),
                ),
                const SizedBox(
                  height: 16,
                ),
                DrawerItem(
                  icon: Icons.man_3_rounded,
                  label: 'Profile',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                DrawerItem(
                  icon: Icons.book,
                  label: 'Active Booking',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                DrawerItem(
                  icon: Icons.help,
                  label: 'Cards',
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.icon,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 10),
          Text(
            label,
          ),
        ],
      ),
    );
  }
}
