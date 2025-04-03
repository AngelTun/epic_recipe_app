import 'package:epic_recipe_app/widget/support_widge.dart';
import 'package:flutter/material.dart';

class Recipe extends StatefulWidget {
  const Recipe({super.key});

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              "images/pasta.jpg",  
              width: MediaQuery.of(context).size.width, 
              height:400, 
              fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                margin: 
                EdgeInsets.only(top: MediaQuery.of(context).size.width/1.1),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Fetuccine Alfredo Pasta", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
              Divider(),
              SizedBox(height: 10.0,),
              Text("About Recipe", style: AppWidget.boldfeildtextstyle(),),
              SizedBox(height: 10.0,),
              Text("El clásico fetuccini alfredo cremosito, sencillo y muy rico. Añádele la proteína que más te guste", style: AppWidget.lightfeildtextstyle(),)
            ],),  )
          ],
        ),
      ),
    );
  }
}