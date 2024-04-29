import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpencesItemHeader extends StatelessWidget {
  const AllExpencesItemHeader({
    super.key,
    required this.image,
    required this.backgroundColor,
    required this.icon1Color,
    required this.icon2Color,
  });
  final String image;
  final Color? backgroundColor;
  final Color? icon1Color;
  final Color? icon2Color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: backgroundColor ?? const Color(0xffFAFAFA),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                icon1Color ?? const Color(0xffFAFAFA), BlendMode.srcIn),
          ),
        ),
        const Icon(
          Icons.chevron_right,
        )
      ],
    );
  }
}
