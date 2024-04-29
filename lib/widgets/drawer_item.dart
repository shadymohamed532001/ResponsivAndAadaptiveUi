import 'package:flutter/material.dart';
import 'package:responsiveadaptive_ui/models/drawer_item_model.dart';
import 'package:responsiveadaptive_ui/widgets/active_in_active_drawer.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

