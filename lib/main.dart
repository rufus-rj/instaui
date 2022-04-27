import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Scaffold(body: Center(child: TestStack())));
  }
}



class TestStack extends StatelessWidget {
  String carName="mustang";
  String city="piravom";
  String iconString="rent";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(height: 220,width: 170,
    decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomLeft,end:Alignment.topRight,colors: [Colors.red.shade400,Colors.red.shade900]),
    borderRadius: BorderRadius.circular(25)),),

        Padding(
          padding: const EdgeInsets.only(top:8.0,left: 8.0),
          child: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(carName ?? "error",style:const TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
              Text(city ?? "error",style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              Icon(
                iconString == "rent"
                    ? Icons.drive_eta_rounded
                    : Icons.work,
                size: 23,color: Colors.white,)
            ],
          ),
        )
        ,Positioned(top:60,child: Image.asset("images/img_1.png",fit:BoxFit.fitHeight,width:240))],
    );
  }
}


