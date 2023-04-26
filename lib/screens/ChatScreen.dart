import 'package:flutter/material.dart';
import 'package:task_screens/common/constants.dart';

import '../common/chat.dart';

class ChatScreen extends StatefulWidget {
  bool isReview = false;
  bool isShipped = false;
  bool isClosed = false;

  ChatScreen(
      {required this.isReview,
      required this.isShipped,
      required this.isClosed});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _formKey = GlobalKey<FormState>();

  final _messageController = TextEditingController();

  bool isWritten = false;

  String _message = '';

  void _sendMessage() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        _messageController.text.isEmpty ? isWritten = false : isWritten = true;
        _messageController.clear();
      });
    }
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: ListView(
        children: [
          const ChatMessage(
            id:Constants.chatId,
            content: Text(
              Constants.chat1,
              style: TextStyle(color: Colors.black),
            ),
            received: true,
            chatBubbleColor: Colors.white,
          ),
          const ChatMessage(
            id:Constants.chatId,
            content: Text(
              Constants.chat2,
              style: TextStyle(color: Colors.white),
            ),
            received: false,
            chatBubbleColor: Colors.indigo,
          ),
          const ChatMessage(
            id:Constants.chatId,
            content: Text(
              Constants.chat3,
              style: TextStyle(color: Colors.black),
            ),
            received: true,
            chatBubbleColor: Colors.white,
          ),
          widget.isClosed
              ? const ChatMessage(
                  id:Constants.chatId,
                  content: Text(
                    Constants.completedChat,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  received: false,
                  chatBubbleColor: Colors.indigo,
                )
              : widget.isShipped
                  ? const ChatMessage(
                      id:Constants.chatId,
                      content: Text(
                        Constants.inProgressChat,
                        style: TextStyle(color: Colors.white),
                      ),
                      received: false,
                      chatBubbleColor: Colors.indigo,
                    )
                  : widget.isReview
                      ? const ChatMessage(
                          id:Constants.chatId,
                          content: Text(
                            Constants.inReviewChat,
                            style: TextStyle(color: Colors.white),
                          ),
                          received: false,
                          chatBubbleColor: Colors.indigo,
                        )
                      : const SizedBox(),
          const ChatMessage(
            id:Constants.chatId,
            content: Text(
              Constants.goodChat,
              style: TextStyle(color: Colors.black),
            ),
            received: true,
            chatBubbleColor: Colors.white,
          ),
          const ChatMessage(
            id:Constants.chatId,
            content: Text(
              Constants.thanksChat,
              style: TextStyle(color: Colors.white),
            ),
            received: false,
            chatBubbleColor: Colors.indigo,
          ),
          widget.isClosed
              ? const ChatMessage(
                  id:Constants.chatId,
                  content: Text(
                    Constants.welcomeChat,
                    style: TextStyle(color: Colors.black),
                  ),
                  received: true,
                  chatBubbleColor: Colors.white,
                )
              : Container(),
          const SizedBox(height: 20),
          isWritten
              ? ChatMessage(
                  id:Constants.chatId,
                  content: Text(
                    _message,
                    style: TextStyle(color: Colors.white),
                  ),
                  received: false,
                  chatBubbleColor: Colors.indigo,
                )
              : const SizedBox(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        hintText: Constants.typeMessage,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        contentPadding: const EdgeInsets.all(20),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      onSaved: (value) {
                        setState(() {
                          _message = value!;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    onPressed: () {
                      _sendMessage();
                    },
                    icon: const Icon(Icons.send, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
