import 'package:flutter/material.dart';

class reto_platzi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = Container(
      margin: EdgeInsets.only(
        top: 40.0,
        left: 100.0,
      ),
      child: Text(
        "DESIGNERS",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );

    final menuIco = Container(
      margin: EdgeInsets.only(
        top: 40.0,
        left: 20.0,
      ),
      child: Icon(
        Icons.menu,
        color: Colors.white,
      ),
    );

    final gradient = Container(
      height: 120.0,
      alignment: Alignment(-0.9, -0.6),
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          image: DecorationImage(
            image: AssetImage("assets/img/office.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.blueAccent.withOpacity(0.3), BlendMode.dstATop),
          )),
      child: Row(
        children: <Widget>[
          menuIco,
          title,
        ],
      ),
    );

    //return gradient;
    return ClipPath(
      child: gradient,
      clipper: AppBarWaveClipper(),
    );
  }
}

class AppBarWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var oneFraction = size.width / 6;

    var firstControlPoint = new Offset(oneFraction, size.height - 35);
    var firstEndPoint = new Offset(oneFraction * 2, size.height - 20);

    var secondControlPoint = new Offset(oneFraction * 3, size.height);
    var secondEndPoint = new Offset(oneFraction * 4, size.height - 20);

    var thirdControlPoint = new Offset(oneFraction * 5, size.height - 35);
    var thirdEndPoint = new Offset(oneFraction * 6, size.height - 30);

    path.lineTo(0.0, size.height - 30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
