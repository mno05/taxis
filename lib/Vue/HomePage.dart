import 'package:flutter/material.dart';
import 'package:taxis/Vue/Auth/GestionnaireLog.dart';
import 'package:taxis/Vue/Auth/TaximanLog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      body: Container(
        height: h,
        width: w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choix du type de Compte',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            DropdownButton(
              elevation: 2,
              items: [
                DropdownMenuItem(
                  child: Text("Gestionnaire"),
                  value: "Gestionnaire",
                ),
                DropdownMenuItem(
                  child: Text("Taximan"),
                  value: "Taximan",
                ),
              ],
              onChanged: (value) {
                switch(value){
                  case "Taximan" : Navigator.push(context, MaterialPageRoute(builder: (context) => TaximanLog(),));
                  break;
                  case "Gestionnaire" : Navigator.push(context, MaterialPageRoute(builder: (context) => GestionnaireLog(),));
                  break;
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
