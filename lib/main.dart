import 'package:flutter/material.dart';
import 'package:ful_direction_chatbot/provider/chat_provider.dart';
import 'package:ful_direction_chatbot/repository/base.dart';
import 'package:ful_direction_chatbot/screens/chatscreen.dart';
import 'package:provider/provider.dart';

import 'screens/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BaseRepository.instance.ensureInitialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FUL Direction',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
        child: PageView(
          controller: _controller,
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            Onboarding(
              onTap: () {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeIn,
                );
              },
            ),
            const ChatScreen(),
          ],
        ),
      ),
    );
  }
}
