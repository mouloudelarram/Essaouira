import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _HelpScreenState createState() =>
      // ignore: no_logic_in_create_state
      _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  _HelpScreenState();
  //create costume stars.

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 30.0,
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context),
                      ),
                      const Icon(
                        Icons.info,
                        color: Color(0xFFFF7643),
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "      L'industrie touristique au Maroc est un secteur économique important, il représente de 8% à 10 % du produit intérieur brut (PIB) du pays. Il a été durement touché par la pandémie de coronavirus (COVID-19) et par les mesures de restrictions des déplacements qui ont été adoptées pour limiter la propagation du virus. Le tourisme, comme la plupart des secteurs d’activité, se tourne fortement vers le digital et les voyageurs en profitent au travers d’expériences personnalisées et à forte valeur ajoutée durant leurs séjours. Les voyageurs d’aujourd’hui, qui cherchent à avoir le choix dans leurs options de séjour et y exigent une flexibilité, ont muté vers le digital, ajoutant que les opérateurs touristiques essayent d’être visibles sur les plates-formes numériques et de s’adapter davantage pour leur offrir de meilleures expériences. Pour répondre à cette demande de flexibilité et éviter au voyageur de devoir ‘booker’ sur plusieurs sites, les opérateurs touristiques essayent d’apporter constamment des solutions leur permettant d’accéder de façon dynamique aux sources (hôtels, excursions, vols, services de location, activités) et de lui proposer des packages touristiques en fonction de leurs souhaits et surtout à leurs budgets. Portant de cela, on remarque que le Maroc généralement et les sociétés touristiques précisément adoptent des stratégies pour pouvoir suivre l'évolution de technologie pour répondre au besoin de client d'une façon efficace et plus confortable. Parmi ces stratèges, on trouve le développement d'une application mobile (MyEssaouira) dédié à la ville d'Essaouira qu'est parmi les destinations touristiques les plus visite au Maroc. Cette application Permet d'améliorer la qualité des services offerts aux habitants et aux touristes pour découvrir les différents Monuments historiques de la ville et aussi permet une visite guidée par des témoignages. En explorant les efforts pour numériser les services touristiques à Essaouira, on a pu découvrir qu'il y a un grand besoin ainsi que les projets dans ce stade sont très limités pour l'instant. ",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
