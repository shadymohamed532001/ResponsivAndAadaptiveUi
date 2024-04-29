import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveadaptive_ui/utils/app_styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.imageAssetName,
    required this.title,
    required this.subtitle,
  });

  final String imageAssetName;
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(imageAssetName),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
