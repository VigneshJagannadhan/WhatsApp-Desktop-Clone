import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/constants/app_constants.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/chat_list_category_section.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/chat_list_header.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/chat_list_item.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/chat_list_searchbar.dart';
import 'package:whatsapp_clone/shared/widgets/custom_svg_icon.dart';

class CallsListSection extends StatelessWidget {
  const CallsListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      width: 0.25.sw,
      child: Column(
        children: [
          ListHeader(
            label: 'Calls',
            actions: [CustomSvgIcon(svgUrl: AppConstants.editSvg)],
          ),
          SizedBox(height: 15.h),
          ChatListSearchbar(),
          SizedBox(height: 5.h),
          ChatListCategorySection(),
          SizedBox(height: 5.h),
          Expanded(
            child: ListView.builder(
              itemCount: 11,
              itemBuilder: (context, index) => ChatListItem(),
            ),
          ),
        ],
      ),
    );
  }
}
