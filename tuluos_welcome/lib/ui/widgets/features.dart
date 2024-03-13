import 'package:flutter/material.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() {
    return _FeaturesState();
  }
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.9,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/macImage.png",
                    fit: BoxFit.fill,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 44),
                      child: Column(
                        children: [
                          Text(
                            "MacOS Like Interface",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .copyWith()
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Center(
              child: Text(
                "TrackPad works after Installation.\nNo Configuration required.",
                style: Theme.of(context).copyWith().textTheme.bodyLarge,
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/tuluosInstaller.png",
                    fit: BoxFit.fill,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 44),
                      child: Column(
                        children: [
                          Text(
                            "TuluOS Installer",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .copyWith()
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/tuluProxySetter.png",
                    fit: BoxFit.fill,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 44),
                      child: Column(
                        children: [
                          Text(
                            "Tulu Proxy Setter",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .copyWith()
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/autoWallpaperChanger.png",
                    fit: BoxFit.fill,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 44),
                      child: Column(
                        children: [
                          Text(
                            "Random Wallpaper Changer Widget",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .copyWith()
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
