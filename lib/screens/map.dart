
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MyMap extends StatefulWidget {


  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  CustomInfoWindowController _customInfoWindowController =
  CustomInfoWindowController();

  final LatLng _latLng = LatLng(33.6844, 73.0479);

  final double _zoom = 15.0;

  Set<Marker> _markers = {};

  List<String> images = [ 'assets/logo-new.png' , 'assets/logo-new.png' ,];

  Uint8List? markerImage;

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();

  }

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData() ;

  }

  //Set<Marker> _markers = {};
  loadData()async{

    for(int i = 0 ; i < images.length ; i++){
      print('name'+images[i].toString());
      final Uint8List markerIcon = await getBytesFromAsset(images[i].toString(), 100);

      if(i == 1 ){
        _markers.add(Marker(
            markerId: MarkerId('2'),
            position: LatLng(33.6992,  72.9744),
            icon: BitmapDescriptor.fromBytes(markerIcon),
            onTap: () {
              _customInfoWindowController.addInfoWindow!(
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 300,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                  width: double.infinity,
                                  child: Image.asset("assets/logo-new.png", fit: BoxFit.cover,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10 , left: 10 , right: 10),
                              child: Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        'Yummy Box',
                                        maxLines: 1,
                                        overflow: TextOverflow.fade,
                                        softWrap: false,
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        child: Image.asset("assets/logo-new.png"),
                                      ),
                                    ),
                                  ]
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                LatLng(33.6992,  72.9744),
              );
            }
        ));
      }else {
        _markers.add( Marker(
            markerId: MarkerId(i.toString()),
            position: LatLng(33.6844, 73.0479),
            icon: BitmapDescriptor.fromBytes(markerIcon),
            onTap: () {
              _customInfoWindowController.addInfoWindow!(
                Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                            width: double.infinity,
                            child: Image.asset("assets/logo-new.png", fit: BoxFit.cover,)),
                      ),
                      // Container(
                      //   width: 200,
                      //   height: 100,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: AssetImage(images[1]),
                      //         fit: BoxFit.fitWidth,
                      //         filterQuality: FilterQuality.high),
                      //     borderRadius: const BorderRadius.all(
                      //       Radius.circular(10.0),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10 , left: 10 , right: 10),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text(
                                'Yummy Box',
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                                softWrap: false,
                              ),
                            ),
                            const Spacer(),
                           Padding(
                             padding: const EdgeInsets.only(bottom: 5),
                             child: Container(
                               height: 30,
                               width: 30,
                               child: Image.asset("assets/logo-new.png"),
                             ),
                           ),
                          ]
                        ),
                      ),

                    ],
                  ),
                ),
                LatLng(33.6844, 73.0479),
              );
            }
        ));
      }

      setState(() {

      });
    }



  }

  @override
  Widget build(BuildContext context) {
    // loadData() ;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onTap: (position) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();
            },
            onMapCreated: (GoogleMapController controller) async {
              _customInfoWindowController.googleMapController = controller;
            },
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: _latLng,
              zoom: _zoom,
            ),
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 200,
            width: 200,
            offset: 25,
          ),
        ],
      ),
    );
  }
}