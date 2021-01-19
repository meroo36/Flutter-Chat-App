class ChatModel {
  List<_Message> messages;

  ChatModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson);

    List<_Message> msgs = [];
    for (int i = 0; i < parsedJson.length; i++) {
      _Message message = _Message(parsedJson[i]);
      msgs.add(message);
    }
    messages = msgs;
  }
}

class _Message {
  String _name;
  String _msg;

  _Message(message) {
    _name = message['msg'];
  }
  String get name => _name;
  String get msg => _msg;
}
