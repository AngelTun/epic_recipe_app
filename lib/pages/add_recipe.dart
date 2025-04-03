import 'package:epic_recipe_app/widget/support_widge.dart';
import 'package:flutter/material.dart';

class AddRecipe extends StatefulWidget {
  const AddRecipe({super.key});

  @override
  State<AddRecipe> createState() => _AddRecipeState();
}

class _AddRecipeState extends State<AddRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Add Recipe", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: 20.0,),
        Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border:Border.all()),
                child: Icon(Icons.camera_alt_outlined),),
        ),
        SizedBox(height: 20.0,),
      Text("Recipe name", style: AppWidget.boldfeildtextstyle(),),
      SizedBox(height: 10.0,),
      Container(
        padding: EdgeInsets.only(left: 10.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white, border: Border.all(), borderRadius: BorderRadius.circular(20)),
        child: TextField(
          decoration: InputDecoration(border: InputBorder.none, hintText: "Write a Recipe Name"),
        ),
      ),
        SizedBox(height: 20.0,),
      Text("Recipe Details", style: AppWidget.boldfeildtextstyle(),),
      SizedBox(height: 10.0,),
      Container(
        padding: EdgeInsets.only(left: 10.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white, border: Border.all(), borderRadius: BorderRadius.circular(20)),
        child: TextField(
          maxLines: 10,
          decoration: InputDecoration(border: InputBorder.none, hintText: "Write a Recipe Details"),
        ),
      )
      ],),),
    );
  }
}