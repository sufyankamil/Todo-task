import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class TaskManagerWalkthrough extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: const PageDecoration(
            pageColor: Colors.deepPurpleAccent,
          ),
          title: "Welcome to Task Manager",
          body: "Manage your tasks easily with our app!",
          image: Center(
              child: Image.asset('assets/images/welcome.png', height: 300),
              ),
        ),
        PageViewModel(
          decoration: const PageDecoration(
            pageColor: Colors.indigoAccent,
          ),
          reverse: true,
          useScrollView: true,
          title: "Create a Task",
          body: "Easily create tasks with just a few taps!",
          image: Center(
            child: Image.asset('assets/images/create_task.png', height: 300),
          ),
        ),
        PageViewModel(
          decoration: const PageDecoration(
            pageColor: Colors.green,
          ),
          reverse: true,
          useScrollView: true,
          title: "Mark as Done",
          body: "Mark your completed tasks as done with ease!",
          image: Center(
            child: Image.asset('assets/images/mark_done.jpg', height: 300),
          ),
        ),
      ],
      onDone: () {
        Navigator.pushNamed(context, '/task-detals');
      },
      next: const Icon(Icons.arrow_forward),
      done: const Text("Done"),
      showSkipButton: false,
      skip: const Text("Skip"),
    );
  }
}
