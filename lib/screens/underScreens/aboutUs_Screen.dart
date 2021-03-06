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
                "      L'industrie touristique au Maroc est un secteur ??conomique important, il repr??sente de 8% ?? 10 % du produit int??rieur brut (PIB) du pays. Il a ??t?? durement touch?? par la pand??mie de coronavirus (COVID-19) et par les mesures de restrictions des d??placements qui ont ??t?? adopt??es pour limiter la propagation du virus. Le tourisme, comme la plupart des secteurs d???activit??, se tourne fortement vers le digital et les voyageurs en profitent au travers d???exp??riences personnalis??es et ?? forte valeur ajout??e durant leurs s??jours. Les voyageurs d???aujourd???hui, qui cherchent ?? avoir le choix dans leurs options de s??jour et y exigent une flexibilit??, ont mut?? vers le digital, ajoutant que les op??rateurs touristiques essayent d?????tre visibles sur les plates-formes num??riques et de s???adapter davantage pour leur offrir de meilleures exp??riences. Pour r??pondre ?? cette demande de flexibilit?? et ??viter au voyageur de devoir ???booker??? sur plusieurs sites, les op??rateurs touristiques essayent d???apporter constamment des solutions leur permettant d???acc??der de fa??on dynamique aux sources (h??tels, excursions, vols, services de location, activit??s) et de lui proposer des packages touristiques en fonction de leurs souhaits et surtout ?? leurs budgets. Portant de cela, on remarque que le Maroc g??n??ralement et les soci??t??s touristiques pr??cis??ment adoptent des strat??gies pour pouvoir suivre l'??volution de technologie pour r??pondre au besoin de client d'une fa??on efficace et plus confortable. Parmi ces strat??ges, on trouve le d??veloppement d'une application mobile (MyEssaouira) d??di?? ?? la ville d'Essaouira qu'est parmi les destinations touristiques les plus visite au Maroc. Cette application Permet d'am??liorer la qualit?? des services offerts aux habitants et aux touristes pour d??couvrir les diff??rents Monuments historiques de la ville et aussi permet une visite guid??e par des t??moignages. En explorant les efforts pour num??riser les services touristiques ?? Essaouira, on a pu d??couvrir qu'il y a un grand besoin ainsi que les projets dans ce stade sont tr??s limit??s pour l'instant. Notre objectif dans ce projet, c'est de participer ?? ces efforts en r??alisant une application mobile multiservices, prenant comme r??f??rence l'application MyEssaouira. Le conseiller royal Andr?? Azoulay participe activement au d??veloppement de l???offre num??rique en proposant un acc??s aux technologies nouvelles. Il accueille tout au long de l???ann??e des publics qui souhaitent d??couvrir le patrimoine dans le cadre de courts ou longs s??jours. L???information touristique et patrimoniale sera disponible via l'application mobile Essaouira . Dans un contexte de d??veloppement croissant de l???offre mobile aupr??s des particuliers, nous d??velopperons un outil de communication num??rique mobile convivial et de proximit??. L???application mobile viendra en compl??ment des outils d??j?? mis en place pour la promotion touristique. Ce projet a pour objectif de combler certains vides tout au long de l???exp??rience du visiteur. L???information deviendra accessible ?? toute heure et quel que soit le lieu o?? la personne sera localis??e. L???utilisateur b??n??ficiera en temps voulu d???informations pertinentes et du m??me coup appr??ciera la haute qualit?? du service qui lui sera propos??. La mise en place d???options adapt??es ?? l???utilisateur peut constituer un vecteur suppl??mentaire de satisfaction pour l???utilisateur. Ainsi l???acc??s ?? l???information partout o?? l???on se trouve, permet d???am??liorer l???acc??s pour tous ?? l???ensemble des informations relatives au tourisme, de diffuser une communication ?? communautaire ?? (de renforcer l???image ?? communautaire ??), d???offrir une interaction avec les utilisateurs en partageant l???information ou en donnant son avis, et diffuser largement et valoriser le territoire et les hommes gr??ce ?? un acc??s ?? distance via un t??l??chargement mobile. Pour achever toutes ces op??rations, notre application doit offrir au minimum les services suivants : L'application doit disposer d'une carte (Google Map extension) personnalis?? qui vise ?? pr??senter toutes les destinations touristique et historique de la ville d'essaouira d'une mani??re tr??s ??volu?? et simple ?? exploiter. ,L'application doit contenir les informations de chaque emplacement d'une mani??re d??taille th??oriquement ?? savoir description, ??tiquette, type, nom, adresse, titre, cat??gorie et une notation sur les destinations.  Et L'application ne doit pas ??tre fig??e, les utilisateurs doivent avoir la possibilit?? d'ajouter des lieux qui n'existent",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
