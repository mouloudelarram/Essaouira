import 'package:app/models/Destination.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _AboutUsScreenState createState() =>
      // ignore: no_logic_in_create_state
      _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  _AboutUsScreenState();
  //create costume stars.


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           /*  Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                iconSize: 30.0,
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
            ), */
             Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Hero(
                    tag: "assets/images/logo.png",
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)), //circular(30.0),
                      child: Image(
                        width: MediaQuery.of(context).size.width,
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
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
                     /*  Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.search),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                          IconButton(
                            icon: const Icon(Icons.sort),
                            iconSize: 25.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ), */
                    ],
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /* Text(
                        widget.destination.city,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ), */
                      Row(
                        children: <Widget>[
                          const Icon(
                            Icons.place,
                            size: 15.0,
                            color: Colors.white70,
                          ),
                          const SizedBox(width: 5.0),
                          /* Text(
                            widget.destination.country,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 20.0,
                            ),
                          ), */
                          //_buildRatingStars(widget.destination.rating),
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  right: 20.0,
                  bottom: 20.0,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white70,
                    size: 25.0,
                  ),
                ),
              ],
            ),
             
            /* Container(
              //padding: const EdgeInsets.all(50),
             /*  width: w,
              height: h * 0.5, */
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ), */
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "      L'industrie touristique au Maroc est un secteur économique important, il représente de 8% à 10 % du produit intérieur brut (PIB) du pays. Il a été durement touché par la pandémie de coronavirus (COVID-19) et par les mesures de restrictions des déplacements qui ont été adoptées pour limiter la propagation du virus. Le tourisme, comme la plupart des secteurs d’activité, se tourne fortement vers le digital et les voyageurs en profitent au travers d’expériences personnalisées et à forte valeur ajoutée durant leurs séjours. Les voyageurs d’aujourd’hui, qui cherchent à avoir le choix dans leurs options de séjour et y exigent une flexibilité, ont muté vers le digital, ajoutant que les opérateurs touristiques essayent d’être visibles sur les plates-formes numériques et de s’adapter davantage pour leur offrir de meilleures expériences. Pour répondre à cette demande de flexibilité et éviter au voyageur de devoir ‘booker’ sur plusieurs sites, les opérateurs touristiques essayent d’apporter constamment des solutions leur permettant d’accéder de façon dynamique aux sources (hôtels, excursions, vols, services de location, activités) et de lui proposer des packages touristiques en fonction de leurs souhaits et surtout à leurs budgets. Portant de cela, on remarque que le Maroc généralement et les sociétés touristiques précisément adoptent des stratégies pour pouvoir suivre l'évolution de technologie pour répondre au besoin de client d'une façon efficace et plus confortable. Parmi ces stratèges, on trouve le développement d'une application mobile (MyEssaouira) dédié à la ville d'Essaouira qu'est parmi les destinations touristiques les plus visite au Maroc. Cette application Permet d'améliorer la qualité des services offerts aux habitants et aux touristes pour découvrir les différents Monuments historiques de la ville et aussi permet une visite guidée par des témoignages. En explorant les efforts pour numériser les services touristiques à Essaouira, on a pu découvrir qu'il y a un grand besoin ainsi que les projets dans ce stade sont très limités pour l'instant. Notre objectif dans ce projet, c'est de participer à ces efforts en réalisant une application mobile multiservices, prenant comme référence l'application MyEssaouira. Le conseiller royal André Azoulay participe activement au développement de l’offre numérique en proposant un accès aux technologies nouvelles. Il accueille tout au long de l’année des publics qui souhaitent découvrir le patrimoine dans le cadre de courts ou longs séjours. L’information touristique et patrimoniale sera disponible via l'application mobile Essaouira . Dans un contexte de développement croissant de l’offre mobile auprès des particuliers, nous développerons un outil de communication numérique mobile convivial et de proximité. L’application mobile viendra en complément des outils déjà mis en place pour la promotion touristique. Ce projet a pour objectif de combler certains vides tout au long de l’expérience du visiteur. L’information deviendra accessible à toute heure et quel que soit le lieu où la personne sera localisée. L’utilisateur bénéficiera en temps voulu d’informations pertinentes et du même coup appréciera la haute qualité du service qui lui sera proposé. La mise en place d’options adaptées à l’utilisateur peut constituer un vecteur supplémentaire de satisfaction pour l’utilisateur. Ainsi l’accès à l’information partout où l’on se trouve, permet d’améliorer l’accès pour tous à l’ensemble des informations relatives au tourisme, de diffuser une communication « communautaire » (de renforcer l’image « communautaire »), d’offrir une interaction avec les utilisateurs en partageant l’information ou en donnant son avis, et diffuser largement et valoriser le territoire et les hommes grâce à un accès à distance via un téléchargement mobile. Pour achever toutes ces opérations, notre application doit offrir au minimum les services suivants : L'application doit disposer d'une carte (Google Map extension) personnalisé qui vise à présenter toutes les destinations touristique et historique de la ville d'essaouira d'une manière très évolué et simple à exploiter. ,L'application doit contenir les informations de chaque emplacement d'une manière détaille théoriquement à savoir description, étiquette, type, nom, adresse, titre, catégorie et une notation sur les destinations.  Et L'application ne doit pas être figée, les utilisateurs doivent avoir la possibilité d'ajouter des lieux qui n'existent",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
