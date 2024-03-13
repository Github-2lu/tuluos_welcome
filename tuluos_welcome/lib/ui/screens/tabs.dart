import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tuluos_welcome/ui/widgets/features.dart';
import 'package:tuluos_welcome/ui/widgets/first_steps.dart';
import 'package:tuluos_welcome/ui/widgets/welcome.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() {
    return _TabScreenState();
  }
}

class _TabScreenState extends State<TabScreen> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool _autoStartValue = false;
  final _autoStartFileLocation =
      "/etc/xdg/autostart/tuluos_welcome_autoStart.desktop";
  final _autoStartFileTempLoc =
      "/usr/share/applications/tuluos_welcome.desktop";

  void _fileExists() async {
    final fp = File(_autoStartFileLocation);
    if (await fp.exists()) {
      setState(() {
        _autoStartValue = true;
      });
    }
  }

  @override
  void initState() {
    _fileExists();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // also add features screen for tuluos apps and widgets
    const screens = [WelcomeScreen(), FirstSteps(), Features()];
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: labelType,
            leading: null,
            trailing: null,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                  icon: Icon(Icons.handshake), label: Text("Welcome")),
              NavigationRailDestination(
                  icon: Icon(Icons.check_box), label: Text("First Step")),
              NavigationRailDestination(
                  icon: Icon(Icons.settings_applications_sharp),
                  label: Text("Features")),
            ],
          ),
          const VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          screens[_selectedIndex]
        ],
      ),
      persistentFooterButtons: [
        Checkbox(
            value: _autoStartValue,
            onChanged: (value) {
              if (value == true) {
                Process.run("konsole", [
                  "-e",
                  "sudo cp $_autoStartFileTempLoc $_autoStartFileLocation"
                ]);
              } else {
                Process.run(
                    "konsole", ["-e", "sudo rm $_autoStartFileLocation"]);
              }
              setState(() {
                _autoStartValue = value!;
              });
            }),
        const Text("autoStart")
      ],
    );
  }
}
