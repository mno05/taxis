import 'package:flutter/material.dart';
import 'package:taxis/Vue/Widgets/ButtonC.dart';
import 'package:taxis/Vue/Widgets/TextFieldC.dart';

class GestionnaireLog extends StatefulWidget {
  const GestionnaireLog({super.key});

  @override
  State<GestionnaireLog> createState() => _GestionnaireLogState();
}

class _GestionnaireLogState extends State<GestionnaireLog> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "S'authentier en tant Gestionnaire",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Form(
              key: _key,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  TextFieldC(
                    controller: email,
                    errM: "Veuillez metre l'adresse mail",
                    hintText: "Email",
                    isMail: true,
                  ),
                  SizedBox(height: 10),
                  TextFieldC(
                      controller: password,
                      isPassWord: true,
                      hintText: "Mot de passe",
                      errM: "Veuillez metre le mot de passe"),
                  SizedBox(height: 10),
                  ButtonC(
                    text: "Se connecter",
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        print("C bon");
                      }
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
