import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ful_direction_chatbot/provider/chat_provider.dart';
import 'package:provider/provider.dart';

import '../widget/chat/message_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _scrollController = ScrollController();
  final TextEditingController _controller = TextEditingController();
  final ValueNotifier<bool> _canSend = ValueNotifier(false);
  bool get textNotEmpty => _controller.text.isNotEmpty;
  String get message => _controller.text.trim();

  void _handleSubmitted() {
    if (textNotEmpty) {
      context.read<ChatProvider>().sendMessage(message);
      _controller.clear();
      _scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    }
    _textOnChange('');
  }

  void _textOnChange(String b) {
    _canSend.value = textNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // statusBarBrightness: Brightness.dark,
        // statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarDividerColor: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFFDFDFDF),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFFDFDFDF),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'DirectionX',
                      style: TextStyle(
                        color: Color(0xFF454545),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Consumer<ChatProvider>(
                  builder: (context, state, _) {
                    return ListView.builder(
                      controller: _scrollController,
                      reverse: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final message = state.messages[index];
                        return MessageBubble(message: message);
                      },
                      itemCount: state.msgCount,
                    );
                  },
                ),
              ),
              const SizedBox(height: 4),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                padding: const EdgeInsets.all(25),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            hintText: 'Type here...',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color(0xFFA6A6A6),
                            ),
                          ),
                          cursorColor: Colors.black,
                          onChanged: _textOnChange,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IntrinsicHeight(
                        child: Container(
                          height: 20,
                          width: 2,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        visualDensity: VisualDensity.compact,
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.waveform_circle_fill,
                          color: Colors.grey,
                        ),
                      ),
                      ValueListenableBuilder<bool>(
                          valueListenable: _canSend,
                          builder: (context, val, _) {
                            return IconButton(
                              visualDensity: VisualDensity.compact,
                              onPressed: _handleSubmitted,
                              icon: Icon(
                                CupertinoIcons.paperplane_fill,
                                color: val ? Colors.purpleAccent : Colors.grey,
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
