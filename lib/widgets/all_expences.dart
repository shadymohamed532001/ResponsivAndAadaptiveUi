import 'package:flutter/material.dart';
import 'package:responsiveadaptive_ui/widgets/all_expences_header.dart';

class AllExpences extends StatelessWidget {
  const AllExpences({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          AllExpencesHeader()
        ],
      ),
    );
  }
}

