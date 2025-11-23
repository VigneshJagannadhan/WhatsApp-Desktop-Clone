import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/themes/app_styles.dart';

class ChatListCategoryItems extends StatelessWidget {
  const ChatListCategoryItems({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Text(label, style: AppStyles.ts16W500cGrey600),
    );
  }
}
