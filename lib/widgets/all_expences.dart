import 'package:flutter/material.dart';
import 'package:responsiveadaptive_ui/widgets/all_expences_header.dart';
import 'package:responsiveadaptive_ui/widgets/all_expences_header_items.dart';

class AllExpences extends StatefulWidget {
  const AllExpences({super.key});

  @override
  State<AllExpences> createState() => _AllExpencesState();
}

class _AllExpencesState extends State<AllExpences> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          AllExpencesHeader(),
          SizedBox(height: 16),
          AllExpencesHeaderItems()
        ],
      ),
    );
  }
}
