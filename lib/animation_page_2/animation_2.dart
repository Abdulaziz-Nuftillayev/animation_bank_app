import 'package:flutter/material.dart';

class AnimationsTwo extends StatefulWidget {
  const AnimationsTwo({super.key});

  @override
  State<AnimationsTwo> createState() => _AnimationsTwoState();
}

class _AnimationsTwoState extends State<AnimationsTwo> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
      duration: const Duration(
          seconds: 2,
      ),
    );
    _controller.forward();

    _controller.forward();
    super.initState();

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
           const SizedBox(height: 50.0),
          const Center(
              child: ListTile(
              title: Text(
                  " Choose \n Your Plan",
                  style: TextStyle(
                  fontSize: 35.0,
                ),
              ),
              subtitle: Text(
                  "\n you can always start with \n a free plan and then upgrade",
                  style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Center(
               child: ScaleTransition(
                 scale: _animation,
                 child: Container(
                   margin: const EdgeInsets.only(top: 30.0),
                   width: 300.0,
                   height: 220.0,
                   decoration: BoxDecoration(
                     boxShadow: const [
                       BoxShadow(
                         color: Colors.black,
                         offset: Offset(0.0, 1.0),
                         blurRadius: 12,
                       ),
                     ],
                     borderRadius: BorderRadius.circular(20.0),
                     color: const Color(0xFFFFFFFF),
                   ),
                   child: Column(
                     children: [
                       const ListTile(
                         title: Text(
                           "noblack",
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 22.0,
                           ),
                           textAlign: TextAlign.center,
                         ),
                         subtitle: Text(
                           "4.99€ monthly",
                           textAlign: TextAlign.center,
                         ),
                       ),
                       const SizedBox (
                         height: 10.0,
                       ),
                       const Text (
                         "Umlimited cards and spaces, \n investments tips and mush more.",
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       const SizedBox(
                           height: 20.0
                       ),
                       const Text(
                         "read all the features",
                       ),
                       const SizedBox(
                           height: 10.0
                       ),
                       TextButton(
                         onPressed: () {
                           Navigator.pushNamed(context, '/');
                         },
                         child: const Text(
                           "I want this",
                           style: TextStyle(
                             color: Colors.green,
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
                  ),
                ],
              ),

          Column(
            children: [
              Center(
                child: ScaleTransition(
              scale: _animation,
                child: Container(
                    margin: const EdgeInsets.only(top: 30.0),
                    width: 300.0,
                    height: 220.0,
                    decoration: BoxDecoration(
                    boxShadow: const [
                       BoxShadow(
                        color: Colors.black,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 12,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xFFFFFFFF),
                  ),

                  child: Column(
                    children: [
                      const ListTile(
                        title: Text(
                            "noblack",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                            "4.99€ monthly",
                            textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox (
                          height: 10.0,
                      ),
                      const Text (
                          "Umlimited cards and spaces, \n investments tips and mush more.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                          height: 20.0
                      ),
                      const Text(
                          "read all the features",
                      ),
                      const SizedBox(
                          height: 10.0
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'animation_3');
                          },
                              child: const Text(
                              "I want this",
                              style: TextStyle(
                              color: Colors.green,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                ),
               ],
             ),
           ],
         ),
      );
  }
}
