import 'package:flutter/material.dart';

class AnimationsOne extends StatefulWidget {
  const AnimationsOne({super.key});

  @override
  State<AnimationsOne> createState() => _AnimationsOneState();
}

class _AnimationsOneState extends State<AnimationsOne> with TickerProviderStateMixin {
  late final AnimationController _controller;
  // late final Animation<Offset> _animation;

  @override
  void initState() {

    _controller = AnimationController(
        vsync: this,
      duration:  const Duration(seconds: 2),
    );
    _controller.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(
          0xFFFFFFFF,
      ),
      body: Column(
        children: [
          const SizedBox(
              height: 40.0,
          ),
          const Center(
            child:  Text("M o b a n k"),
          ),
          const SizedBox(
              height: 30.0
          ),
          SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(2.0, 2.0),
                end: const Offset(0.0, 0.0),
              ).animate(_controller),
            child: Image.asset(
                "assets/images/04(11).png",
            ),
          ),
          const SizedBox(
              height: 10.0,
          ),
           SlideTransition(
               position: Tween<Offset>(
                 begin: const Offset(-2.0, -2.0),
                 end: const Offset(0.0, 0.0),
               ).animate(_controller),
            child: const ListTile(
              title: Text(
                "The first bank \n with a bank",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 35.0,
              ),
            ),
            subtitle: Text(
                "\n join the nobank experience, \n entirely online, no jokes.",
                textAlign: TextAlign.center,
            ),
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
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}























// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
//   late final AnimationController controller;
//   late final Animation<double> _animation;
//
//   @override
//   void initState() {
//     controller = AnimationController(
//       vsync: this,
//       duration: const Duration(
//           milliseconds: 1200,
//       ),
//     );
//     _animation = Tween(
//         begin: 0.0,
//         end: 1.0,
//     ).animate(controller);
//     controller.forward();
//     controller.addListener(() {
//       debugPrint('VALUE: ${controller.value}');
//     });
//     controller.forward().then((value) {
//       controller.reverse();
//     });
//     controller.repeat();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text("ANIMATIONS"),
//       ),
//       body: Center(
//         child: FadeTransition(
//           opacity: _animation,
//           child: Image.asset(
//             "assets/images/Playstation.png",
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           if (controller.isAnimating) {
//             controller.stop();
//           } else {
//             controller.repeat();
//           }
//         },
//         child: const Icon(Icons.stop),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }