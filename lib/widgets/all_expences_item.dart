import 'package:flutter/material.dart';
import 'package:responsiveadaptive_ui/models/all_expences_items_header_model.dart';
import 'package:responsiveadaptive_ui/widgets/active_and_inactive_expencess_items.dart';

class AllExpencesItem extends StatelessWidget {
  const AllExpencesItem({
    super.key,
    required this.headerModel,
    required this.isActive,
  });
  final AllExpencesItemHeaderModel headerModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveEcxpencesItem(headerModel: headerModel)
        : InActiveEcxpencesItem(headerModel: headerModel);
  }
}
