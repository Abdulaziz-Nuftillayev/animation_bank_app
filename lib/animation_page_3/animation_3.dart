import 'package:flutter/material.dart';

class AnimationsThree extends StatefulWidget {
  const AnimationsThree({super.key});

  @override
  State<AnimationsThree> createState() => _AnimationsThreeState();
}

class _AnimationsThreeState extends State<AnimationsThree> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState(){
    _controller = AnimationController(
        vsync: this,
      duration: const Duration(
          seconds: 2,
      ),
    );
    _controller.forward();
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column (
        children: [
          const SizedBox(height: 40.0),
          const Center (
            child: Text("M o b a n k"),
          ),
          const SizedBox(height: 50.0),
          SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(2.0, 2.0),
                end: const Offset(0.0, 0.0),
              ).animate(_controller),
          child: Image.asset("assets/images/04(8).png"),
          ),
          const ListTile(
            title: Text(
                "You did it, \n you're in.",
              style: TextStyle(
                fontSize: 30.0,
              ),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
                "\n welcome Lorenzo now \n you are a nobanker",
              style: TextStyle(
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30.0),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "animation_2");
            },
            child: Container(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              margin: const EdgeInsets.only(
                  top: 30.0
              ),
              width: 180.0,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  50.0,
                ),
                color: const Color(
                  0xFF000000,
                ),
              ),
              child: const Text(
                "Enter",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(
                    0xFFFFFFFF,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
