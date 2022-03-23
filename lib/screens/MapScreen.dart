import 'dart:async';
import 'package:app/models/Destination.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Set<Marker> _markers = Set<Marker>();
  late BitmapDescriptor mapmarkerNormal;
  late BitmapDescriptor mapmarkerSpecial;
  //get ⭐.
  String _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return stars;
  }

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
      for (int i = 0; i < Destinations.length; i++) {
        _markers.add(
          Marker(
            markerId: MarkerId(Destinations[i].markerId),
            position:
                LatLng(Destinations[i].latitude, Destinations[i].longitude),
            icon: (Destinations[i].category == 'normale')
                ? mapmarkerNormal
                : mapmarkerSpecial,
            infoWindow: InfoWindow(
              title: Destinations[i].title,
              snippet: Destinations[i].snippet,
            ),
          ),
        );
      }
    });
  }

  //Local Position operations start.
  Completer<GoogleMapController> _controller = Completer();

/*   Set<Polyline> _polylines = Set<Polyline>();

  List<LatLng> polylineCoordinates = []; */

  late StreamSubscription<LocationData> subscription;

  LocationData? currentLocation;
  late Location location;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
    setCustomMarkerSpecial();
    location = Location();
    setInitialLocation();
  }

  void setInitialLocation() {
    location.getLocation().then((value) {
      currentLocation = value;
      updatePinsOnMap();
    });
  }

  void showLocationPins() {
    var sourceposition = LatLng(
        currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0);
    _markers.add(Marker(
      markerId: MarkerId('sourcePosition'),
      position: sourceposition,
    ));

    //setPolylinesInMap();
  }

  /* void setPolylinesInMap() {
    _polylines.add(Polyline(
      width: 5,
      polylineId: PolylineId('polyline'),
      color: Colors.blueAccent,
      points: polylineCoordinates,
    ));
  } */

  void updatePinsOnMap() async {
    CameraPosition cameraPosition = CameraPosition(
      bearing: 120,
      tilt: 59.440717697143555,
      zoom: 18,
      target: LatLng(
          currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0),
    );

    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    var sourcePosition = LatLng(
        currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0);
    _markers.removeWhere((marker) => marker.mapsId.value == 'sourcePosition');

    _markers.add(Marker(
      markerId: MarkerId('sourcePosition'),
      icon: BitmapDescriptor.defaultMarker,
      position: sourcePosition,
    ));
  }
  //End Local Position operations

  // show or hide items
  bool item = true;
  var input = TextEditingController();
  void change() {
    setState(() {
      item = !item;
    });
  }

  // return camera to item
  void changeCamera(double? latitude, double? longitude) async {
    CameraPosition cameraPosition = CameraPosition(
      bearing: 135,
      tilt: 59.440717697143555,
      zoom: 19.151926040649414,
      target: LatLng(latitude ?? 0.0, longitude ?? 0.0),
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
              //polylines: _polylines,
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
                showLocationPins();
              },
            ),
          ),
          Positioned(
            bottom: h*0.1,
            left: 0,
            width: w,
            child: (item == true)
                ? Column(
                    children: <Widget>[
                      Container(
                        height: h * 0.2,
                        width: w,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Destinations.length,
                          itemBuilder: (BuildContext context, int index) {
                            Destination destination = Destinations[index];
                            return GestureDetector(
                              onTap: () => changeCamera(
                                  destination.latitude, destination.longitude),
                              child: Container(
                                margin: const EdgeInsets.all(10.0),
                                width: w * 0.8,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black26,
                                            offset: Offset(0.0, 2.0),
                                            blurRadius: 6.0,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          Hero(
                                              tag: destination.imageUrl,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Opacity(
                                                  opacity: 1,
                                                  child: Image(
                                                    height: 150,
                                                    width: w * 0.8,
                                                    image: NetworkImage(destination.imageUrl),/* AssetImage(
                                                        destination.imageUrl), */
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              )),
                                          Positioned(
                                            left: 10.0,
                                            bottom: 10.0,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  destination.name,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 1.2,
                                                  ),
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    const Icon(
                                                      Icons.add,
                                                      size: 10.0,
                                                      color: Colors.white,
                                                    ),
                                                    const SizedBox(width: 5.0),
                                                    Text(
                                                      destination.country,
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            right: 10.0,
                                            top: 10.0,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  _buildRatingStars(
                                                      destination.rating),
                                                  style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 1.2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                : Container(),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            width: w,
            height: h * 0.08,
            child: FloatingActionButton(
              onPressed: setInitialLocation,
              backgroundColor: Colors.cyan,
              tooltip: 'Google Map',
              child: const Icon(Icons.pin_drop_outlined),
            ),
          ),
          Positioned(
            top: 10,
            width: w,
            child: Center(
              child: Container(
                margin: EdgeInsets.all(w * 0.05),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: const Offset(1, 1),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ],
                ),
                child: TextField(
                  controller: input,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.pin_drop_outlined,
                      color: Colors.deepOrangeAccent,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10 + w * 0.05,
            right: w * 0.05,
            child: FloatingActionButton(
              onPressed: change,
              tooltip: 'Google Map',
              backgroundColor: Colors.cyan,
              child: (item == true)
                  ? const Icon(
                      Icons.close,
                    )
                  : const Icon(
                      Icons.list,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
