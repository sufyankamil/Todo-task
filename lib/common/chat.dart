import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../styles/styles.dart';

// Reusable Chat Message Component
/// @description
///   Chat Message Component which accepts contents in the form of text and widgets
/// @params
/// - @requires id: key for the component
/// - @requires received : for specifying the chat bubble position
///   when received:true message will be displayed at right
///   when received:false message will be at displayed at left
/// - @requires content: Widget to be displayed inside the chat bubble
/// - @optional chatBubbleColor: for displaying the message box color
///
///   e.g  ChatMessage(
///           id: "chat-message",
///           content: Text(
///                      "hello",
///                       style: TextStyle(color: Colors.white),
///                     ),,
///           received: true,
///           messageColor: const Color.fromARGB(23,33,22,34)
///           chatBubbleColor: const Color.fromARGB(255, 222, 222, 1),
///         )
///

class ChatMessage extends StatelessWidget {
  final String id;
  final bool received;
  final Widget content;
  final Color? chatBubbleColor;

  const ChatMessage(
      {super.key,
        required this.id,
        required this.received,
        required this.content,
        this.chatBubbleColor});

  @override
  Widget build(BuildContext context) {
    // for circular radius of chat bubble
    const emptyCircularRadius = Radius.circular(0);
    const defaultCircularRadius = Radius.circular(10);

    // to capture the width of the device screen
    var screenWidth = MediaQuery.of(context).size.width;

    // to identify which corner should have a circular radius
    var borderRadiusTopRight =
    received ? defaultCircularRadius : emptyCircularRadius;
    var borderRadiusTopLeft =
    received ? emptyCircularRadius : defaultCircularRadius;

    // to assign padding based on width of the device screen
    var bubbleHorizontalPadding =
    screenWidth < maxMobileScreenWidth ? 20.0 : 50.0;

    return Padding(
      // outer padding of the component
      padding: EdgeInsets.only(
          right: bubbleHorizontalPadding,
          left: bubbleHorizontalPadding,
          top: 20),
      child: Row(
        mainAxisAlignment:
        // to position chat bubble
        received ? MainAxisAlignment.start : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Chat bubble Tail
          //  to display tail at top left corner when received is true
          if (received)
          // to rotate the chat bubble tail when received:true.
            Transform(
              key: Key('$id-received'),
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: CustomPaint(
                painter: ChatBubbleTail(chatBubbleColor ?? primaryButtonColor),
              ),
            ),
          // Chat bubble
          Container(
            constraints: BoxConstraints(maxWidth: screenWidth * 0.7),
            child: Container(
              // chat bubble inner padding
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: chatBubbleColor ?? primaryButtonColor,
                  borderRadius: BorderRadius.only(
                    topLeft: borderRadiusTopLeft,
                    topRight: borderRadiusTopRight,
                    bottomLeft: defaultCircularRadius,
                    bottomRight: defaultCircularRadius,
                  ),
                ),
                // widget which is displayed on the chat bubble
                child: content),
          ),
          // Right Chat bubble Tail
          // to display tail at top right corner when received is false
          if (received == false)
            CustomPaint(
              key: Key('$id-sent'),
              painter: ChatBubbleTail(chatBubbleColor ?? primaryButtonColor),
            )
        ],
      ),
    );
  }
}

class ChatBubbleTail extends CustomPainter {
  final Color bgColor;

  // background color which is applied on the chat screen
  ChatBubbleTail(this.bgColor);

  // to paint the area from the path specified below
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;

    var path = Path();
    path.lineTo(-5, 0);
    path.lineTo(0, 10);
    path.lineTo(5, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
