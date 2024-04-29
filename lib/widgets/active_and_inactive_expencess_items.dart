import 'package:flutter/material.dart';
import 'package:responsiveadaptive_ui/models/all_expences_items_header_model.dart';
import 'package:responsiveadaptive_ui/utils/app_styles.dart';
import 'package:responsiveadaptive_ui/widgets/all_expences_item_header.dart';

class InActiveEcxpencesItem extends StatelessWidget {
  const InActiveEcxpencesItem({
    super.key,
    required this.headerModel,
  });

  final AllExpencesItemHeaderModel headerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpencesItemHeader(
            image: headerModel.image,
            icon1Color: const Color(0xff4EB7F2),
            icon2Color: const Color(0xff4EB7F2),
            backgroundColor: const Color(0xffFAFAFA),
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            headerModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          Text(
            headerModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          Text(
            headerModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveEcxpencesItem extends StatelessWidget {
  const ActiveEcxpencesItem({
    super.key,
    required this.headerModel,
  });

  final AllExpencesItemHeaderModel headerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpencesItemHeader(
            image: headerModel.image,
            icon1Color: Colors.white,
            icon2Color: Colors.white,
            backgroundColor: Colors.white.withOpacity(0.1),
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            headerModel.title,
            style:
                AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          ),
          Text(
            headerModel.date,
            style:
                AppStyles.styleRegular14(context).copyWith(color: Colors.white),
          ),
          Text(
            headerModel.price,
            style: AppStyles.styleSemiBold24(context).copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
