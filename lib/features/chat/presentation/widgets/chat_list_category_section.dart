import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/chat_list_category_items.dart';

class ChatListCategorySection extends StatelessWidget {
  const ChatListCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ChatListCategoryItems(label: 'All'),
        SizedBox(width: 10.w),
        ChatListCategoryItems(label: 'Unread'),
        SizedBox(width: 10.w),
        ChatListCategoryItems(label: 'Favourites'),
        SizedBox(width: 10.w),
        ChatListCategoryItems(label: 'Groups'),
      ],
    );
  }
}
