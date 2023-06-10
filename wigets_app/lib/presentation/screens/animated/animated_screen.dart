import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimnatedScreen extends StatefulWidget {
  
  static const name ='animated_screen';
  
  const AnimnatedScreen({super.key});

  @override
  State<AnimnatedScreen> createState() => _AnimnatedScreenState();
}

class _AnimnatedScreenState extends State<AnimnatedScreen> {
  
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;
  
  void changeShape(){
    
    final random = Random();
    
    width = random.nextInt(300) + 120;
    height = random.nextInt(300) + 120;
    //color
    borderRadius = random.nextInt(100)+20;
    
    color = Color.fromRGBO(
      random.nextInt(255),   //red
      random.nextInt(255),   //green
      random.nextInt(255),   //blue
      1                      //opacity
    );
    setState((){});
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve:Curves.easeOutCubic,
          width:width <= 0 ? 0 : width,
          height:height <= 0 ? 0 : height,
          decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(borderRadius <0 ? 0 :borderRadius)
          ),
        ),
      ),    
      
  
  
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_circle_fill_rounded),             
      ),
    );
  }
}