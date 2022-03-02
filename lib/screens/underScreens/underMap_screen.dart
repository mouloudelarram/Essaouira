import 'dart:async';
import 'package:app/models/Destination.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class UnderMapScreen extends StatefulWidget {
  Destination currentDestination;
  UnderMapScreen({Key? key, required this.currentDestination})
      : super(key: key);

  @override
  _UnderMapScreenState createState() => _UnderMapScreenState(currentDestination: this.currentDestination);
}

class _UnderMapScreenState extends State<UnderMapScreen> {
  late Destination currentDestination;
  _UnderMapScreenState({required this.currentDestination});
  Set<Marker> _markers = Set<Marker>();
  late BitmapDescriptor mapmarkerNormal;
  late BitmapDescriptor mapmarkerSpecial;

  void setCustomMarker() async {
    mapmarkerNormal = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/images/marker1.png');
  }

  void setCustomMarkerSpecial() async {
    mapmarkerSpecial = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/images/marker2.png');
  }

  //on map created add Destinations.
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      
        _markers.add(
          Marker(
            markerId: MarkerId(currentDestination.markerId),
            position:
                LatLng(currentDestination.latitude, currentDestination.longitude),
            icon: (currentDestination.category == 'normale')
                ? mapmarkerNormal
                : mapmarkerSpecial,
            infoWindow: InfoWindow(
              title: currentDestination.title,
              snippet: currentDestination.snippet,
            ),
            onTap: changeCamera,
          ),
        );
      
    });
  }

  //Local Position operations start.
  Completer<GoogleMapController> _controller = Completer();


  late StreamSubscription<LocationData> subscription;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
    setCustomMarkerSpecial();
  }

  bool item = true;
  var input = TextEditingController();
  void change() {
    setState(() {
      item = !item;
    });
  }

  // return camera to item
  void changeCamera() async {
    CameraPosition cameraPosition = CameraPosition(
      bearing: 135,
      tilt: 59.440717697143555,
      zoom: 19.151926040649414,
      target: LatLng(currentDestination.latitude,currentDestination.longitude),
    );

    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: w,
            height: h,
            child: GoogleMap(
              zoomControlsEnabled: false,
              markers: _markers.map((e) => e).toSet(),
              initialCameraPosition: const CameraPosition(
                bearing: 0,
                tilt: 0,
                zoom: 14,
                target: LatLng(31.50853707915537, -9.763341092159518),
              ),
              myLocationButtonEnabled: true,
              compassEnabled: false,
              mapType: MapType.hybrid,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                _onMapCreated(controller);
              },
            ),
          ),
          Positioned(
            top: w * 0.01,
            left: w * 0.01,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Colors.white,
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
           ],
      ),
    );
  }
}
