import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        children: [
          const Text(
            "Welcome To TuluOS",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Image.asset("assets/gifs/welcome_pigeon.gif", height: height * 0.3),
          const SizedBox(
            height: 10,
          ),
          Text(
            "This Welcome Screen will guide you through your first steps, show you information about TuluOS.",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Image.asset(
            "assets/gifs/Sketchy Pigeon.gif",
            height: height * 0.3,
          ),
          Text(
            "This is just my hobby project to create an OS based on arch",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            "Some bugs may exist. So sorry for any inconvenience.",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            "Have a great Time using this distro.",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
