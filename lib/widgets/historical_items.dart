import 'package:app/models/Destination.dart';
import 'package:app/screens/underScreens/underMap_screen.dart';
//import 'package:app/models/destination_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HistoricalItems extends StatelessWidget {
  const HistoricalItems({Key? key}) : super(key: key);

  //create costume stars.
  static String _buildRatingStars(int rating) {
    String stars = '  ';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return (stars);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Destinations historiques',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await launch('https://visitessaouira.net/',
                      forceSafariVC: false);
                },
                child: Text(
                  'Voir tout',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 450.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = Destinations[index];
              if (destination.type == 'historical') {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => UnderMapScreen(
                        currentDestination: destination,
                      ),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 340.0,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom: 15.0,
                          child: Container(
                            height: w,
                            width: 340.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  SizedBox(height: w - 120),
                                  Row(
                                    children: [
                                      Text(
                                        destination.name,
                                        style: const TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const Spacer(),
                                      Text(
                                        _buildRatingStars(destination.rating),
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2,
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 2.0),
                                  Row(
                                    children: [
                                      Text(
                                        destination.address,
                                        style: const TextStyle(
                                          color: Colors.cyan,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Container()
                                    ],
                                  ),
                                  const SizedBox(height: 2.0),
                                  Row(
                                    children: [
                                      Text(
                                        destination.label,
                                        style: const TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Container(),
                                    ],
                                  ),
                                  const SizedBox(height: 2.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              height: w - 50,
                              width: w,
                              image: AssetImage(destination.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
        ),
        const Text(
          'Visiter la ville d\'Essaouira.',
          style: TextStyle(fontSize: 13, color: Colors.black12),
        ),
      ],
    );
  }
}
