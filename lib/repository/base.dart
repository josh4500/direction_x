import 'package:dialogflow_grpc/dialogflow_grpc.dart';
import 'package:dialogflow_grpc/generated/google/cloud/dialogflow/v2beta1/session.pb.dart';
import 'package:flutter/services.dart';

class BaseRepository {
  static BaseRepository? _instance;
  static BaseRepository get instance => _instance ??= BaseRepository();
  late DialogflowGrpcV2Beta1 _dialogflow;

  Future<void> ensureInitialize() async {
    final serviceAccount = ServiceAccount.fromString(
        (await rootBundle.loadString('asset/credentials.json')));
    _dialogflow = DialogflowGrpcV2Beta1.viaServiceAccount(serviceAccount);
  }

  Future<QueryResult> detectTextIntent(String text) async {
    DetectIntentResponse data = await _dialogflow.detectIntent(text, 'en-US');
    return data.queryResult;
  }
}
