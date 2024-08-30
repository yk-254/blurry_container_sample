import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'BlurryContainer',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF21262d),
        body: SizedBox.expand(
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Positioned(
                top: 200,
                left: 10,
                child: GradientBall(colors: [Colors.deepOrange, Colors.amber]),
              ),
              const Positioned(
                top: 400,
                right: 10,
                child: GradientBall(
                  size: Size.square(200),
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: BlurryContainer(
                  blur: 8,
                  height: 240,
                  elevation: 6,
                  padding: const EdgeInsets.all(32),
                  color: Colors.white.withOpacity(0.15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDoPhR0EV55vXcFtUujS5HBSmLVuq-AL_0AdPxc5RVJVLcp0JPWnM1zCvtCeqPbDExAoQ&usqp=CAU',
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "Opportunities don't happen, you create them.",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "yekta".toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "flutter programmer",
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            ":)",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradientBall extends StatelessWidget {
  final List<Color> colors;
  final Size size;
  const GradientBall({
    Key? key,
    required this.colors,
    this.size = const Size.square(150),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
    );
  }
}