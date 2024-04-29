import 'package:flutter/material.dart';
import 'package:responsiveadaptive_ui/models/drawer_item_model.dart';
import 'package:responsiveadaptive_ui/utils/app_images.dart';
import 'package:responsiveadaptive_ui/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> drawersitem = [
    DrawerItemModel(
      image: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: Assets.imagesMyTransctions,
      title: 'My Transactions',
    ),
    DrawerItemModel(
      image: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.imagesWalletAccount,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: drawersitem.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: DrawerItem(
                drawerItemModel: drawersitem[index],
                isActive: selectedIndex == index,
              ),
            ),
          );
        });
  }
}
