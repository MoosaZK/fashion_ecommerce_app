import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<Offset> _offsetAnimation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Adjust the duration as needed
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _offsetAnimation = Tween(begin: const Offset(-0.2, 0), end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _controller.forward();

    _animation.addListener(() {
      setState(() {}); // Trigger widget rebuild when the animation updates
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: _animation,
            child: Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: Text(
                  "F",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DMSerifText-Regular'),
                ),
              ),
            ),
          ),
          // ),
          const SizedBox(
            width: 10,
          ),
          SlideTransition(
            position: _offsetAnimation,
            child: FadeTransition(
              opacity: _animation,
              child: const Text(
                "fashion",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DMSerifText-Regular'),
              ),
            ),
          )
        ],
      )),
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
