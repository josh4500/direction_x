import 'package:dialogflow_grpc/dialogflow_grpc.dart';
import 'package:flutter/cupertino.dart';

import '../models/message.dart';
import '../repository/base.dart';

class ChatProvider extends ChangeNotifier {
  late DialogflowGrpcV2Beta1 dialogflow;
  final List<Message> _messages = [];

  List<Message> get messages => _messages;
  int get msgCount => _messages.length;

  void sendMessage(String content) async {
    final msg = Message(content: content);
    _messages.insert(0, msg);
    notifyListeners();
    final queryResult = await BaseRepository.instance.detectTextIntent(content);
    String fulfillmentText = queryResult.fulfillmentText;
    if (fulfillmentText.isNotEmpty) {
      final botMessage = Message(content: fulfillmentText, isMe: false);
      _messages.insert(0, botMessage);
      notifyListeners();
    }
  }

  void handleAudioStream(
      Stream<List<int>> audioStream, TextEditingController messageController) {
    var biasList = SpeechContextV2Beta1(phrases: [
      'Dialogflow CX',
      'Dialogflow Essentials',
      'Action Builder',
      'HIPAA'
    ], boost: 20.0);

    // See: https://cloud.google.com/dialogflow/es/docs/reference/rpc/google.cloud.dialogflow.v2#google.cloud.dialogflow.v2.InputAudioConfig
    var config = InputConfigV2beta1(
        encoding: 'AUDIO_ENCODING_LINEAR_16',
        languageCode: 'en-US',
        sampleRateHertz: 16000,
        singleUtterance: false,
        speechContexts: [biasList]);

    final responseStream =
        dialogflow.streamingDetectIntent(config, audioStream);
    responseStream.listen((data) {
      //print('----');

      //print(data);
      String transcript = data.recognitionResult.transcript;
      String queryText = data.queryResult.queryText;
      String fulfillmentText = data.queryResult.fulfillmentText;

      if (fulfillmentText.isNotEmpty) {
        final message = Message(
          content: queryText,
        );

        final botMessage = Message(
          content: fulfillmentText,
          isMe: false,
        );

        _messages.insert(0, message);
        messageController.clear();
        _messages.insert(0, botMessage);
      }
      if (transcript.isNotEmpty) {
        messageController.text = transcript;
      }
    }, onError: (e) {
      //print(e);
    }, onDone: () {
      //print('done');
    });
  }
}
