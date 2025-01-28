import 'package:flutter/material.dart';

class FlutterAnimation1 extends StatefulWidget {
  const FlutterAnimation1({super.key});

  @override
  State<FlutterAnimation1> createState() => _FlutterAnimation1State();
}

class _FlutterAnimation1State extends State<FlutterAnimation1> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _radiusAnimation;

  @override  
  void initState() {
    super.initState();

    // Set up the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();  // Start the animation immediately

    // Rotation animation (from 0 to 1)
    _rotationAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Radius animation for circle to square effect
    _radiusAnimation = Tween<double>(begin: 450, end: 10.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );


    _controller.addListener((){
      setState(() {});
    });

    _controller.addStatusListener((status){
      if(status == AnimationStatus.completed){
        _controller.reverse();
      }else if(status == AnimationStatus.dismissed){
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Biggest object
            Transform.rotate(
              angle: _rotationAnimation.value,
              child: Container(
                width: 225,
                height: 225,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.deepPurple[900]!,
                      Colors.deepPurple[800]!,
                    ],
                    radius: 1.5,
                    center: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.8),
                      offset: const Offset(-6, -6),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(6, 6),
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            ),
            // Second biggest object
            Transform.rotate(
              angle: _rotationAnimation.value + .2,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.deepPurple[800]!,
                      Colors.deepPurple[700]!,
                    ],
                    radius: 1.5,
                    center: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.7),
                      offset: Offset(-6, -6),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(6, 6),
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            ),
            // Third biggest object
            Transform.rotate(
              angle: _rotationAnimation.value + .4,
              child: Container(
                width: 175,
                height: 175,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.deepPurple[700]!,
                      Colors.deepPurple[600]!,
                    ],
                    radius: 1.5,
                    center: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.7),
                      offset: Offset(-6, -6),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(6, 6),
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            ),
            // Fourth biggest object
            Transform.rotate(
              angle: _rotationAnimation.value + .6,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.deepPurple[600]!,
                      Colors.deepPurple[500]!,
                    ],
                    radius: 1.5,
                    center: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + .8,
              child: Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.deepPurple[700]!,
                      Colors.deepPurple[600]!,
                    ],
                    radius: 1.5,
                    center: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                ),
              ),
            ),
            // Fifth biggest object
            Transform.rotate(
              angle: _rotationAnimation.value + 1,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.deepPurple[500]!,
                      Colors.deepPurple[400]!,
                    ],
                    radius: 1.5,
                    center: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                ),
              ),
            ),
            // Sixth biggest object
            Transform.rotate(
              angle: _rotationAnimation.value + 1.2,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.deepPurple[400]!,
                      Colors.deepPurple[300]!,
                    ],
                    radius: 1.5,
                    center: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 1.4,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.deepPurple[300]!,
                      Colors.deepPurple[200]!,
                    ],
                    radius: 1.5,
                    center: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 1.6,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.deepPurple[200]!,
                      Colors.deepPurple[100]!,
                    ],
                    radius: 1.5,
                    center: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}