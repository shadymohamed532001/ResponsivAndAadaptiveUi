import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveadaptive_ui/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
          
        ),
      ],
    );
  }
}
