

// import 'package:flutter/material.dart';

// class LocationAlamat extends StatefulWidget {
//   // final Address? address;

//   const LocationAlamat({
//     Key? key,
//   }) : super(key: key);
//   @override
//   _LocationAlamatState createState() => _LocationAlamatState();
// }

// class _LocationAlamatState extends State<LocationAlamat> {
// //

//   @override
//   void initState() {
//     super.initState();
//   }

//   // Location _location = Location();
// //
//   List<Marker> _markers = [];
//   LatLng _initialcameraposition = LatLng(-7.803249, 110.3398253);
//   GoogleMapController? _controller;
//   String? lokasi;
//   String? alamat;

//   double? lt, lg;
//   double? mylt, mylg;
//   @override
//   Widget build(BuildContext context) {
//     // var userLocation = Provider.of<GeoLocation>(context);
//     // mylt = userLocation.userlocation.latitude;
//     // mylg = userLocation.userlocation.longitude;
//     GoogleMapController? controllermap;
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Stack(
//             children: [
//               GoogleMap(
//                 onCameraMoveStarted: () {
//                   print('start moving');
//                 },
//                 trafficEnabled: false,
//                 myLocationButtonEnabled: true,
//                 myLocationEnabled: true,
//                 minMaxZoomPreference: MinMaxZoomPreference(10, 30),
//                 initialCameraPosition: CameraPosition(
//                   target: LatLng(-7.803249, 110.3398253),
//                   zoom: 15,
//                 ),
//                 onMapCreated: (controller) {
//                   controller.animateCamera(
//                     CameraUpdate.newCameraPosition(
//                       CameraPosition(
//                           target: LatLng(-7.803249, 110.3398253), zoom: 15),
//                     ),
//                   );
//                 },
//                 onLongPress: (l) async {
//                   setState(() {});
//                   _markers.add(Marker(
//                       markerId: MarkerId('myMarket-id'),
//                       draggable: false,
//                       infoWindow: InfoWindow(
//                         title: 'Lokasi di Pilih',
//                         snippet: 'Latitude : ' +
//                             l.latitude.toString() +
//                             ' Longitude : ' +
//                             l.longitude.toString(),
//                       ),
//                       icon: BitmapDescriptor.defaultMarkerWithHue(
//                           BitmapDescriptor.hueGreen),
//                       position: LatLng(l.latitude, l.longitude)));
//                   List<geocoding.Placemark> newPlace = await geocoding
//                       .placemarkFromCoordinates(l.latitude, l.longitude);
//                   geocoding.Placemark placemark = newPlace[0];
//                   alamat =
//                       '${placemark.street}, ${placemark.subLocality}, ${placemark.locality}, ${placemark.postalCode}, ${placemark.country}';
//                   print(newPlace);
//                   lt = l.latitude;
//                   lg = l.longitude;
//                 },
//                 onTap: (l) async {},
//                 markers: Set.from(_markers),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   margin: EdgeInsets.all(10),
//                   height: MediaQuery.of(context).size.height / 3.5,
//                   child: Center(
//                     child: Column(
//                       children: [
//                         Container(
//                             // padding: EdgeInsets.symmetric
//                             color: Color(0xFF38DA77).withOpacity(0.3),
//                             width: double.infinity,
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.info,
//                                   color: Colors.black45,
//                                 ),
//                                 Text("Tap Lama Untuk Menandai Lokasi"),
//                               ],
//                             )),
//                         Container(
//                           color: Colors.white,
//                           child: Column(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(70, 40, 30, 20),
//                                 child: Row(
//                                   children: [
//                                     Expanded(
//                                         flex: 1,
//                                         child: Icon(
//                                           Icons.location_on,
//                                           color: Colors.red,
//                                         )),
//                                     Expanded(
//                                         flex: 5,
//                                         child: Text(
//                                           (lt == null)
//                                               ? 'Pilih Lokasi Anda'
//                                               : '${alamat}',
//                                           maxLines: 3,
//                                           // style: blackFontStyle1.copyWith(
//                                           //     fontSize: 2 * sp)
//                                         )),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                   // margin: EdgeInsets.fromLTRB(
//                                   //     5 * w, 0, 5 * w, 1.3 * h),
//                                   width: double.infinity,
//                                   child: ElevatedButton(
//                                       style: ButtonStyle(
//                                         // backgroundColor:
//                                         //     MaterialStateProperty.all<Color>(
//                                         //         mainGreen2),
//                                         shape: MaterialStateProperty.all(
//                                             RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                         10.0))),
//                                       ),
//                                       onPressed: () {
//                                         // SubLayanan(titip_map: lt.toString());
//                                         Map<String, dynamic>? _alamatUmum = {
//                                           'titik': '' +
//                                               lt.toString() +
//                                               '#' +
//                                               lg.toString(),
//                                           'alamat': alamat
//                                         };
//                                         Get.back(result: _alamatUmum);
//                                         // print(SubLayanan(
//                                         //     titip_map: lt.toString()));
//                                       },
//                                       child: Text(
//                                         'Konfirmasi',
//                                         // style: blackFontStyle1.copyWith(
//                                         // fontSize: 2.1 * sp)
//                                       )))
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Container(
//                     margin: EdgeInsets.fromLTRB(10, 38, 0, 0),
//                     height: 50,
//                     width: 100,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle, color: Colors.black),
//                     child: Icon(Icons.arrow_back, color: Colors.white),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
