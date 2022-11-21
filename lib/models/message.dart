import 'intent.dart';

class Message {
  final List<Intent> intents;
  final bool isMe;
  final String content;
  final DateTime createdAt;

  Message({
    this.intents = const [],
    this.isMe = true,
    required this.content,
  }) : createdAt = DateTime.now();
}
