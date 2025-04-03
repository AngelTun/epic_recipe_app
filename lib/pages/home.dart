import 'package:epic_recipe_app/widget/support_widge.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
//Iniciando el proyecto
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed:(){}, child: Icon(Icons.add, color: Colors.white,),),
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
            padding: EdgeInsets.only(left: 10.0),
            margin: EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(color: const Color.fromARGB(255, 228, 224, 224),
            borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width,
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none, suffixIcon: Icon(Icons.search_outlined), hintText: "Search Recipe..."),
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/soup.jpg", 
                          height: 150, 
                          width: 150, 
                          fit: BoxFit.cover,
                          ),
                      ),
                        SizedBox(height: 10.0,),
                        Text("Soup Recipes", style: AppWidget.lightfeildtextstyle())
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/maincourse.jpg", 
                          height: 150, 
                          width: 150, 
                          fit: BoxFit.cover,
                          ),
                      ),
                        SizedBox(height: 10.0,),
                        Text("Main Course", style: AppWidget.lightfeildtextstyle())
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/indian.jpg", 
                          height: 150, 
                          width: 150, 
                          fit: BoxFit.cover,
                          ),
                      ),
                        SizedBox(height: 10.0,),
                        Text("Indian Recipes", style: AppWidget.lightfeildtextstyle())
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/chinese.jpg", 
                          height: 150, 
                          width: 150, 
                          fit: BoxFit.cover,
                          ),
                      ),
                        SizedBox(height: 10.0,),
                        Text("Chinese Recipes", style: AppWidget.lightfeildtextstyle())
                    ],
                  ),
                ),
              ],
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: 
                    Image.asset(
                      "images/pasta.jpg", 
                      height: 300, 
                      width: 250, 
                      fit: BoxFit.cover,)),
                      SizedBox(height: 10.0,),
                      Text("Fetuccine Alfred Pasta", style: AppWidget.boldfeildtextstyle(),)
                ],),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: 
                    Image.asset(
                      "images/burger.jpg", 
                      height: 300, 
                      width: 250, 
                      fit: BoxFit.cover,)),
                      SizedBox(height: 10.0,),
                      Text("Cheese burger", style: AppWidget.boldfeildtextstyle(),)
                ],),
              )
            ],),
          )
      ],
      ),
      ),
    );
  }
}