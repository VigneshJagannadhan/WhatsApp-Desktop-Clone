import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/features/home/presentation/providers/home_provider.dart';
import 'package:whatsapp_clone/features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440, 1024),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => HomeProvider()),
        ],
        child: MaterialApp(
          home: HomeScreen(),
          theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 26, 25, 25),
          ),
        ),
      ),
    );
  }
}
