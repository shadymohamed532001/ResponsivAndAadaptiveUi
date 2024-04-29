import 'package:flutter/material.dart';
import 'package:responsiveadaptive_ui/models/all_expences_items_header_model.dart';
import 'package:responsiveadaptive_ui/utils/app_images.dart';
import 'package:responsiveadaptive_ui/widgets/all_expences_item.dart';

class AllExpencesHeaderItems extends StatefulWidget {
  const AllExpencesHeaderItems({
    super.key,
  });

  @override
  State<AllExpencesHeaderItems> createState() => _AllExpencesHeaderItemsState();
}

class _AllExpencesHeaderItemsState extends State<AllExpencesHeaderItems> {
  int currentindex = 0;
  final List<AllExpencesItemHeaderModel> items = [
    AllExpencesItemHeaderModel(
      date: 'April 2022',
      title: 'Balance',
      price: '\$20,129',
      image: Assets.imagesBalance,
    ),
    AllExpencesItemHeaderModel(
      date: 'April 2022',
      title: 'Income',
      price: '\$20,129',
      image: Assets.imagesIncome,
    ),
    AllExpencesItemHeaderModel(
      date: 'April 2022',
      title: 'Expenses',
      price: '\$20,129',
      image: Assets.imagesExpenses,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
            child: Padding(
          padding: index == 1
              ? const EdgeInsets.symmetric(horizontal: 12)
              : EdgeInsets.zero,
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentindex = index;
              });
            },
            child: AllExpencesItem(
              headerModel: item,
              isActive: currentindex == index,
            ),
          ),
        ));
      }).toList(),
    );
  }
}
