import 'package:flutter/material.dart';
import 'package:taxis/Vue/Widgets/ActionContainer.dart';

class GestionnaireLocale extends StatefulWidget {
  const GestionnaireLocale({super.key});

  @override
  State<GestionnaireLocale> createState() => _GestionnaireLocaleState();
}

class _GestionnaireLocaleState extends State<GestionnaireLocale> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Moïse NDJADI"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: h,
          width: w,
          child: Wrap(
            children: [
              ActionConatainer(
                text: "Ajouter un Taximan",
                onPressed: () {},
              ),
              ActionConatainer(
                text: "Modifier un Taximan",
                onPressed: () {},
              ),
              ActionConatainer(
                text: "Supprimer un Taximan",
                onPressed: () {},
              ),
                            ActionConatainer(
                text: "Ajouter un Taxis",
                onPressed: () {},
              ),
                            ActionConatainer(
                text: "Modifier un taxis",
                onPressed: () {},
              ),
                            ActionConatainer(
                text: "Supprimer un Taxis",
                onPressed: () {},
              ),
                            ActionConatainer(
                text: "Le compte d'un taximan",
                onPressed: () {},
              ),
                            ActionConatainer(
                text: "Mes Taximen",
                onPressed: () {},
              ),
                            ActionConatainer(
                text: "Se déconnecter",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
