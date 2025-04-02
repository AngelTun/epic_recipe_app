import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left:20.0),
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                Text("Looking for your\nfavourite meal", 
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 25.0, 
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("images/boy.jpg", height: 60, width: 60, fit: BoxFit.cover,
                )),
                    ],),
          ),
          SizedBox(height: 20.0,),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(color: const Color.fromARGB(255, 228, 224, 224),
            borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width,
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          )
      ],),),
    );
  }
}