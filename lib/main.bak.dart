import "package:flutter/cupertino.dart";
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";

String _name = "suxin";

void main() {
  runApp(FriendlyChatApp());
}

final ThemeData kIOSTheme = ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kAndroidTheme = ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent[400],
);

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key? key,
  }) : super(key: key); // 这里省略了构建函数体。

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FriendlyChat",
      home: ChatScreen(),
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kAndroidTheme,
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final AnimationController animationController;

  ChatMessage({required this.text, required this.animationController});

  @override
  Widget build(BuildContext context) {
    final fadeAnimation =
        Tween(begin: 0.0, end: 1.0).animate(animationController);
    return FadeTransition(
      opacity: fadeAnimation,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOut,
        ),
        axisAlignment: 0.0,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16.0),
                child: CircleAvatar(child: Text(_name[0])),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_name, style: Theme.of(context).textTheme.headline6),
                    Container(
                        margin: EdgeInsets.only(top: 5.0), child: Text(text))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  bool _isComposing = false; // false 禁止提交。

  final List<ChatMessage> _message = [];
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    for (ChatMessage msg in _message) {
      msg.animationController.dispose();
    }
    super.dispose();
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
      animationController: AnimationController(
        duration: const Duration(milliseconds: 200),
        vsync: this,
      ),
    );
    setState(() {
      _message.insert(0, message);
      _isComposing = false;
    });
    _focusNode.requestFocus();
    _scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    message.animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FriendlyChat"),
        elevation: 0.0,
      ),
      body: Container(
        decoration: Theme.of(context).platform == TargetPlatform.iOS
            ? BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey[200] as Color)),
              )
            : null,
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  controller: _scrollController,
                  padding: EdgeInsets.all(8.0),
                  itemCount: _message.length,
                  reverse: true,
                  itemBuilder: (_, int index) => _message[index]),
            ),
            Divider(
              height: 1,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
                // 输入发提交事件
                onSubmitted: _isComposing ? _handleSubmitted : null,
                onChanged: (String text) {
                  setState(() {
                    _isComposing = text.isNotEmpty;
                  });
                },
                focusNode: _focusNode,
                decoration: InputDecoration.collapsed(
                    hintText: "Send a message to your friend"),
              ),
            ),
            Container(
              child: Theme.of(context).platform == TargetPlatform.iOS
                  ? CupertinoButton(
                      onPressed: _isComposing
                          ? () => _handleSubmitted(_textController.text)
                          : null,
                      child: Text("send"),
                    )
                  : IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: _isComposing
                          ? () => _handleSubmitted(_textController.text)
                          : null, // 点击按钮提交
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
