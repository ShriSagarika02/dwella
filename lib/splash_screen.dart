import 'package:flutter/material.dart';
import 'package:flutter_application_3/MyHomePage.dart';

class SplashScreen extends StatefulWidget{
  @override
  SplashScreenState createState()=>SplashScreenState();
}
class SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState(){
    super.initState();
  
  _controller=AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this);
    _animation=CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _controller.forward();
    Future.delayed(const Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
    });
    
  }
  void dispose()
  {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(opacity: _animation,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            
            Text("Dwella",style: TextStyle(fontFamily: 'cursive',fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),)
          ],
        ),),
      ),
    );
  }
}