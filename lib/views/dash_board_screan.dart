import 'package:flutter/material.dart';
import 'package:responsiveadaptive_ui/widgets/adaptive_layout_widget.dart';
import 'package:responsiveadaptive_ui/widgets/dashboard_desktop_layout.dart';

class DashBoardScrean extends StatelessWidget {
  const DashBoardScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        tabletLayout: (context) => const SizedBox(),
        mobileLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
