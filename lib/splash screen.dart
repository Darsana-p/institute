import 'package:flutter/material.dart';
import 'package:institute_imat/register.dart';

void main() {
  runApp(MaterialApp(home: Splash(), debugShowCheckedModeBanner: false));
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Register()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white12, Colors.white10],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: size.height / 20),
                Container(
                  height: size.height / 3,
                  width: size.width / 1.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/course.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: size.height / 40),
                GradientText(
                  "Welcome",
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.red],
                  ),
                  style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height / 80),
                Text(
                  "We are glad to see you !!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: size.height / 20),
              child: Column(
                children: [
                  Container(
                    height: size.height / 25,
                    width: size.width / 25,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: size.height / 80),
                  Text(
                    "Please wait..",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  GradientText(
      this.text, {
        required this.gradient,
        this.style,
      });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}


