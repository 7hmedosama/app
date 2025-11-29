import 'package:app/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splachscrean extends StatefulWidget {
  static const String routename = 'splachscreen';

  @override
  State<Splachscrean> createState() => _SplachscreanState();
}

class _SplachscreanState extends State<Splachscrean> {
  double opacity = 0; // للتحكم في الـ Fade

  @override
  void initState() {
    super.initState();

    // 1) الصورة تظهر تدريجيًا
    Future.delayed(Duration(milliseconds: 200), () {
      if (mounted) {
        setState(() {
          opacity = 1;
        });
      }
    });

    // 2) بعد ثانيتين تختفي تدريجيًا
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          opacity = 0;
        });
      }
    });

    // 3) وبعد 3 ثواني نروح للـ HomeScreen
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(builder: (context) => HomeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        duration: Duration(seconds: 1), // سرعة الـ Fade
        opacity: opacity,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Image.asset(
            'images/splash.png',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Center(child: Text('خطأ في تحميل الصورة'));
            },
          ),
        ),
      ),
    );
  }
}
