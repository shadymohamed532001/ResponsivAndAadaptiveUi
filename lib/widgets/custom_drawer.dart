import 'package:flutter/material.dart';
import 'package:responsiveadaptive_ui/models/drawer_item_model.dart';
import 'package:responsiveadaptive_ui/widgets/active_in_active_drawer.dart';
import 'package:responsiveadaptive_ui/widgets/custom_list_tile.dart';
import 'package:responsiveadaptive_ui/widgets/drawer_item_listview.dart';

import '../utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const CustomListTile(
            imageAssetName: Assets.imagesAvatar3,
            title: 'John Doe',
            subtitle: 'john@gmail.com',
          ),
          const SizedBox(
            height: 8,
          ),
          const DrawerItemListView(),
          const Expanded(
            child: SizedBox(),
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                image: Assets.imagesSettings, title: 'Setting system'),
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                image: Assets.imagesLogout, title: 'Logout account'),
          )
        ],
      ),
    );
  }
}
