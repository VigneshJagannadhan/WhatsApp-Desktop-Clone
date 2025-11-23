import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/themes/app_styles.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({super.key, required this.label, required this.actions});

  final String label;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppStyles.ts16WBoldcWhite),
          Row(children: actions),
        ],
      ),
    );
  }
}
