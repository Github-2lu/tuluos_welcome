import 'dart:io';

import 'package:flutter/material.dart';

class FirstSteps extends StatelessWidget {
  const FirstSteps({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Process.run("konsole", [
                  "-e",
                  "sh",
                  "-c",
                  "sudo pacman-key --init; sudo pacman-key --populate"
                ]);
              },
              child: Text("Generate key", style: Theme.of(context).textTheme.bodyLarge)),
          SizedBox(
            height: height * 0.05,
          ),
          Text("Generate pacman keyring to use pacman", style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(
            height: 5,
          ),
          Text(
              "If you are using proxy then sometimes pacman fails to install package due to key generation fail.", style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(
            height: 5,
          ),
          Text(
              "commands are: sudo pacman-key --init;sudo pacman-key --populate", style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(
            height: height * 0.1,
          ),
          ElevatedButton(
              onPressed: () {
                Process.run("konsole", ["-e", "sudo pacman -Syu"]);
              },
              child: Text("Update system", style: Theme.of(context).textTheme.bodyLarge)),
          SizedBox(
            height: height * 0.05,
          ),
          Text("Command sudo pacman -Syu", style: Theme.of(context).textTheme.bodyLarge,),
        ],
      ),
    );
  }
}
