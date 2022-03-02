import 'package:app/models/Destination.dart';
import 'package:app/screens/underScreens/underMap_screen.dart';
import 'package:flutter/material.dart';

class BaytDakiraScreen extends StatefulWidget {
  final Destination destination;
  final String description;

  const BaytDakiraScreen(
      {Key? key, required this.destination, required this.description})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _BaytDakiraScreenState createState() =>
      // ignore: no_logic_in_create_state
      _BaytDakiraScreenState(description: description);
}

class _BaytDakiraScreenState extends State<BaytDakiraScreen> {
  final String description;
  _BaytDakiraScreenState({required this.description});
  //create costume stars.
  Text _buildRatingStars(int rating) {
    String stars = '  ';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                    tag: widget.destination.imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)), //circular(30.0),
                      child: Image(
                        width: MediaQuery.of(context).size.width,
                        image: AssetImage(widget.destination.imageUrl),
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
                      Text(
                        widget.destination.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          const Icon(
                            Icons.place,
                            size: 15.0,
                            color: Colors.white70,
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            widget.destination.label,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 20.0,
                            ),
                          ),
                          _buildRatingStars(widget.destination.rating),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20.0,
                  bottom: 20.0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.location_on,
                      color: Colors.white70,
                      size: 25.0,
                    ),
                    iconSize: 25.0,
                    color: Colors.black,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => UnderMapScreen(
                          currentDestination: widget.destination,
                        ),
                      ),
                    ),
                  ), /* Icon(
                    Icons.location_on,
                    color: Colors.white70,
                    size: 25.0,
                  ), */
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "      " + description,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
