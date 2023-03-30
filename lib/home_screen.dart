import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: ClipPath(
                clipper: FirstContainerClipper(),
                child: Container(
                  color: Colors.indigo,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 1,
              child: ClipPath(
                clipper: ThirdContainerClipper(),
                child: Container(
                  color: Colors.indigo,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstContainerClipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(30, size.height, size.width / 6, size.height - 30);
    path.quadraticBezierTo(
        size.width / 3, size.height / 2, size.width / 1.5, size.height - 60);
    path.quadraticBezierTo(
        size.width / 1.2, size.height - 20, size.width, size.height / 2);
    path.lineTo(size.width, 0);

    return path;
  }

  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ThirdContainerClipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 30);
    path.quadraticBezierTo(
        size.width / 6, 0, size.width / 5, 30);
    path.quadraticBezierTo(
        size.width / 1.5,size.height/2, size.width, size.height/2 -30);
    path.lineTo(size.width, size.width);
    path.lineTo(0, size.height);


    //  path.moveTo(0, 30);
    //  path.quadraticBezierTo(size.width/3, 0, size.width, 30);
    return path;
  }

  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
