import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/core/constants/app_enums.dart';
import 'package:whatsapp_clone/features/calls/presentation/widgets/calls_list_section.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/chat_detail_section.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/chat_list_section.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/main_options_bar.dart';
import 'package:whatsapp_clone/features/home/presentation/providers/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeProvider>(
        builder: (context, homeProvider, _) {
          return Row(
            children: [
              const MainOptionsBar(),
              VerticalDivider(thickness: 0.1.w, width: 0.1.w),
              returnListingSection(homeProvider.selectedSection),
              VerticalDivider(thickness: 0.1.w, width: 0.1.w),
              EmptyChatDetailSection(),
            ],
          );
        },
      ),
    );
  }
}

Widget returnListingSection(MainSection value) {
  switch (value) {
    case MainSection.chats:
      return ChatListSection();
    case MainSection.calls:
      return CallsListSection();
    case MainSection.updates:
      return Container(alignment: Alignment.center, child: Text("Updates"));
    case MainSection.archived:
      return Container(alignment: Alignment.center, child: Text("Archived"));
    case MainSection.starred:
      return Container(alignment: Alignment.center, child: Text("Starred"));
    case MainSection.meta:
      return Container(alignment: Alignment.center, child: Text("Meta"));
  }
}
