import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../model/res/components/header.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;

  const BaseScreen({required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),  // Always show the header
        Expanded(
          child: child,  // The specific screen content
        ),
      ],
    );
  }
}
