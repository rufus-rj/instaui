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

class CarCard extends StatelessWidget {
  String? carName;
  String? city;
  String? iconString;

  CarCard(
      {@required this.carName, @required this.city, @required this.iconString});

  @override
  Widget build(BuildContext context) {
    int width = (MediaQuery.of(context).size.width).toInt();
    int height = (MediaQuery.of(context).size.height).toInt();
    return Padding(
        padding: const EdgeInsets.all(7),
        child: Container(
            decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomLeft,end:Alignment.topRight,colors: [Colors.red.shade400,Colors.red.shade900]),
               borderRadius: BorderRadius.circular(25)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0,top:8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.baseline,
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
             ,Image.asset("images/img_4.png",height:500,width:500) ],
            )));
  }
}

class CarListing extends StatefulWidget {
  const CarListing({Key? key}) : super(key: key);

  @override
  _CarListingState createState() => _CarListingState();
}

class _CarListingState extends State<CarListing> {
  @override
  Widget build(BuildContext context) {
    int width = ((MediaQuery.of(context).size.width) ~/ 2);
    int height = ((MediaQuery.of(context).size.height) * 0.37).toInt();
    return GridView.count(
        childAspectRatio: width / height,
        // Crate a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: [
          CarCard(
            carName: "massarati",
            city: "piravom",
            iconString: "rent",
          ),
          CarCard(
            carName: "massarati",
            city: "piravom",
            iconString: "rent",
          ),
          CarCard(
            carName: "massarati",
            city: "piravom",
            iconString: "rent",
          ),
          CarCard(
            carName: "massarati",
            city: "piravom",
            iconString: "rent",
          ),
          CarCard(
            carName: "massarati",
            city: "piravom",
            iconString: "rent",
          ),
          CarCard(
            carName: "massarati",
            city: "piravom",
            iconString: "rent",
          ),
          CarCard(
            carName: "massarati",
            city: "piravom",
            iconString: "rent",
          ),
          CarCard(
            carName: "massarati",
            city: "piravom",
            iconString: "rent",
          ),
          CarCard(
            carName: "massarati",
            city: "piravom",
            iconString: "rent",
          ),
        ]);
  }
}

class Img extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("images/img_1.png",height: 800,width:800);
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


