import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List<Map<String, String>> locationList = [
    {
      "text": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr",
    },
    {
      "text": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, ",
    },
    {
      "text": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,",
    }
  ];
  bool mapToggle = false;
  Position? currentLocation;
  var mapController;
  List<Marker> myMarker = [];

  @override
  void initState() {
    super.initState();
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((currloc) {
      setState(() {
        currentLocation = currloc;
        mapToggle = true;
      });
    });
  }

  void _onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                Column(children: <Widget>[
                  navContainer(context: context, navText: "Location"),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 550,
                    child: mapToggle
                        ? GoogleMap(
                            onMapCreated: _onMapCreated,
                            myLocationEnabled: true,
                            initialCameraPosition: CameraPosition(
                                target: LatLng(currentLocation!.latitude,
                                    currentLocation!.longitude),
                                zoom: 18.0),
                            markers: Set.from(myMarker),
                            onTap: handleTap,
                          )
                        : const Center(
                            child: Text(
                            'Loading.. Please wait..',
                            style: TextStyle(fontSize: 20.0),
                          )),
                  ),
                ]),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 610),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: locationList.length,
                  itemBuilder: (context, index) => Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 15, right: 15),
                        child: Card(
                            color: Colors.grey[100],
                            child: Padding(
                              padding: const EdgeInsets.all(18),
                              child:
                                  Text(locationList[index]["text"].toString()),
                            )),
                      )),
            ),
          ],
        ),
      ),
    );
  }

  handleTap(LatLng tappedPoint) {
    setState(() {
      myMarker = [];
      myMarker.add(Marker(
          markerId: MarkerId(tappedPoint.toString()),
          position: tappedPoint,
          draggable: true,
          onDragEnd: (dragEndPosition) {}));
    });
  }
}
