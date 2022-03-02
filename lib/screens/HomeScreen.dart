import 'package:app/models/Destination.dart';
import 'package:app/widgets/TopDestination.dart';
import 'package:app/widgets/historical_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'underScreens/aboutUs_Screen.dart';
import 'underScreens/baytDakira_screen.dart';
import 'underScreens/destination_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
/*   int _selectedIndex = 0;
  final List<IconData> _icons = [
    Icons.flight,
    Icons.bed,
    Icons.nordic_walking,
    Icons.electric_bike,
  ]; */
/* 
  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : const Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }
 */
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        children: <Widget>[
          /* const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text(
              'What would you like to find?',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           */
          /* const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _icons
                .asMap()
                .entries
                .map(
                  (MapEntry map) => _buildIcon(map.key),
                )
                .toList(),
          ),
          */

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 120.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BaytDakiraScreen(description: BaytDakira.description, destination: BaytDakira,),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: w * 0.3,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/baytdakira2.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Bayt Dakira",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: w*0.2),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AboutUsScreen(),
                    ),
                  ),
                  child: const Center(
                    child: Icon(Icons.info_outline),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const TopDestination(), //class 1
          const SizedBox(height: 20.0), //class 2
          const HistoricalItems(),
        ],
      ),
    );
  }
}
