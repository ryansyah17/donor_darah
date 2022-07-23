import 'package:donor_darah/models/geolocationpoint.dart';
import 'package:donor_darah/shared/shared.dart';
import 'package:donor_darah/ui/pages/daftardonorpage.dart';
import 'package:donor_darah/ui/pages/historypage.dart';
import 'package:donor_darah/ui/pages/location_services.dart';
import 'package:donor_darah/ui/pages/settings_page.dart';
import 'package:donor_darah/ui/pages/urgentnotificationpage.dart';
import 'package:donor_darah/ui/pages/user_location.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
import 'package:supercharged/supercharged.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LocationService locationService = LocationService();

  @override
  void dispose() {
    locationService.dispose();
    super.dispose();
  }

  bool _pinned = true;
  bool _floating = false;
  bool toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.white,
                  pinned: _floating,
                  floating: false,
                  flexibleSpace: Container(),
                ),
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.white,
                  expandedHeight: 60,
                  shadowColor: Colors.transparent,
                  pinned: _pinned,
                  flexibleSpace: Container(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('Beranda',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                width: 90,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: '630000'.toColor(),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SettingPage()));
                              },
                              child: Icon(
                                Icons.settings,
                                size: 35,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    // child: ClipRRect(
                                    //   borderRadius: BorderRadius.circular(100),
                                    //   child:
                                    //  Image.network(
                                    // user!.photoURL!
                                    // ),
                                    // ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            ''
                                            // user.displayName!
                                            ,
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            ''
                                            // user.email!
                                            ,
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    height: 50,
                                    width: 1,
                                    color: '630000'.toColor(),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          'Gol.Darah',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                        'O',
                                        style:
                                            GoogleFonts.poppins(fontSize: 20),
                                      ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            // Container(
                            //   margin: EdgeInsets.symmetric(vertical: 15),
                            //   height: 50,
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(22),
                            //     color: "630000".toColor(),
                            //   ),
                            //   child: Row(
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Container(
                            //         height: 50,
                            //         margin:
                            //             EdgeInsets.symmetric(horizontal: 15),
                            //         // width: MediaQuery.of(context).size.width - 200,
                            //         decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.circular(8),
                            //         ),
                            //         child: Center(
                            //           child: Text(
                            //             'Relawan Pendonor',
                            //             style: GoogleFonts.poppins(
                            //               fontWeight: FontWeight.w500,
                            //               fontSize: 18,
                            //               color: Colors.white,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //       Spacer(),
                            //       Container(
                            //         margin:
                            //             EdgeInsets.symmetric(horizontal: 15),
                            //         child: AnimatedContainer(
                            //           duration: Duration(milliseconds: 500),
                            //           height: 30,
                            //           width: 60,
                            //           decoration: BoxDecoration(
                            //             borderRadius: BorderRadius.circular(20),
                            //             color: toggleValue
                            //                 ? Colors.white
                            //                 : Colors.white,
                            //           ),
                            //           child: Stack(
                            //             children: [
                            //               AnimatedPositioned(
                            //                   curve: Curves.easeIn,
                            //                   top: 3.0,
                            //                   left: toggleValue ? 30 : 0,
                            //                   right: toggleValue ? 0 : 30,
                            //                   duration:
                            //                       Duration(milliseconds: 500),
                            //                   child: InkWell(
                            //                     onTap: toggleButton,
                            //                     child: AnimatedSwitcher(
                            //                         duration: Duration(
                            //                             milliseconds: 500),
                            //                         transitionBuilder: (Widget
                            //                                 child,
                            //                             Animation<double>
                            //                                 animation) {
                            //                           return RotationTransition(
                            //                             turns: animation,
                            //                             child: child,
                            //                           );
                            //                         },
                            //                         child: toggleValue
                            //                             ? Icon(
                            //                                 Icons.check_circle,
                            //                                 color: "630000"
                            //                                     .toColor(),
                            //                                 size: 25,
                            //                                 key: UniqueKey())
                            //                             : Icon(
                            //                                 Icons
                            //                                     .remove_circle_outline,
                            //                                 color: "630000"
                            //                                     .toColor(),
                            //                                 size: 25,
                            //                                 key: UniqueKey())),
                            //                   )),
                            //             ],
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 67,
                                    width:
                                        MediaQuery.of(context).size.width / 3 -
                                            30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white,
                                        boxShadow: [BoxShadow(blurRadius: 1)]),
                                    child: Column(
                                      children: [
                                        Container(
                                          // margin: EdgeInsets.only(
                                          //   top: 5,
                                          // ),
                                          child: Text(
                                            'Total Donor',
                                            style: GoogleFonts.poppins(
                                              color: "630000".toColor(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '9',
                                            style: GoogleFonts.poppins(
                                                fontSize: 30,
                                                color: "630000".toColor(),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 65,
                                    width:
                                        MediaQuery.of(context).size.width / 3 -
                                            30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white,
                                        boxShadow: [BoxShadow(blurRadius: 1)]),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Text(
                                            'Terakhir Donor',
                                            style: GoogleFonts.poppins(
                                              color: "630000".toColor(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '17 Jan 2021',
                                            style: GoogleFonts.poppins(
                                                fontSize: 20,
                                                color: "630000".toColor(),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            StreamBuilder<UserLocation>(
                                stream: locationService.locationStream,
                                builder: (context, snapshot) => (snapshot
                                        .hasData)
                                    ? Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: primer,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Lat:',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      4 -
                                                  30,
                                              child: Text(
                                                '${snapshot.data!.latitude}',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Text(
                                              'Long:',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      4 -
                                                  30,
                                              child: Text(
                                                '${snapshot.data!.longitude}',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    : SizedBox()),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (ctx) => LocationPage()));
                              },
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: 250,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    )
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    // ClipRRect(
                                    //   borderRadius: BorderRadius.circular(12),
                                    //   child: GoogleMap(
                                    //     onCameraMoveStarted: () {
                                    //       print('start moving');
                                    //     },
                                    //     trafficEnabled: false,
                                    //     myLocationButtonEnabled: true,
                                    //     myLocationEnabled: true,
                                    //     minMaxZoomPreference:
                                    //         MinMaxZoomPreference(10, 30),
                                    //     initialCameraPosition: CameraPosition(
                                    //       target: _initialPosition,
                                    //       zoom: 15,
                                    //     ),
                                    //     onMapCreated: (controller) {
                                    //       controller.animateCamera(
                                    //         CameraUpdate.newCameraPosition(
                                    //           CameraPosition(
                                    //               target: LatLng(mylt!, mylg!),
                                    //               zoom: 15),
                                    //         ),
                                    //       );
                                    //     },
                                    //     onLongPress: (l) async {
                                    //       setState(() {});
                                    //       _markers.add(Marker(
                                    //           markerId: MarkerId('myMarket-id'),
                                    //           draggable: false,
                                    //           infoWindow: InfoWindow(
                                    //             title: 'Lokasi di Pilih',
                                    //             snippet: 'Latitude : ' +
                                    //                 l.latitude.toString() +
                                    //                 ' Longitude : ' +
                                    //                 l.longitude.toString(),
                                    //           ),
                                    //           icon: BitmapDescriptor
                                    //               .defaultMarkerWithHue(
                                    //                   BitmapDescriptor
                                    //                       .hueGreen),
                                    //           position: LatLng(
                                    //               l.latitude, l.longitude)));
                                    //       List<geocoding.Placemark> newPlace =
                                    //           await geocoding
                                    //               .placemarkFromCoordinates(
                                    //                   l.latitude, l.longitude);
                                    //       geocoding.Placemark placemark =
                                    //           newPlace[0];
                                    //       alamat =
                                    //           '${placemark.street}, ${placemark.subLocality}, ${placemark.locality}, ${placemark.postalCode}, ${placemark.country}';
                                    //       print(newPlace);
                                    //       lt = l.latitude;
                                    //       lg = l.longitude;
                                    //     },
                                    //     onTap: (l) async {},
                                    //     markers: Set.from(_markers),
                                    //   ),
                                    // ),
                                    Container(
                                      color: Colors.transparent,
                                      height: 250,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DaftarDonorPage()));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    height: 150,
                                    width:
                                        MediaQuery.of(context).size.width / 2.3,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white,
                                        boxShadow: [BoxShadow(blurRadius: 5)]),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 100,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          // width: 80,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn-icons-png.flaticon.com/128/5073/5073415.png')),
                                          ),
                                        ),
                                        Container(
                                          // margin:
                                          //     EdgeInsets.symmetric(vertical: 10),
                                          child: Text(
                                            'Daftar Donor',
                                            style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                color: "630000".toColor(),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HistoryPage()));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    height: 150,
                                    width:
                                        MediaQuery.of(context).size.width / 2.3,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 5,
                                              offset: Offset(0, 1))
                                        ]),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 100,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          // width: 80,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn-icons-png.flaticon.com/128/2972/2972415.png')),
                                          ),
                                        ),
                                        Container(
                                          // margin:
                                          //     EdgeInsets.symmetric(vertical: 10),
                                          child: Text(
                                            'History',
                                            style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                color: "630000".toColor(),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UrgentNotificationPage()));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    height: 150,
                                    width:
                                        MediaQuery.of(context).size.width / 2.3,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white,
                                        boxShadow: [BoxShadow(blurRadius: 5)]),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 100,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          // width: 80,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn-icons-png.flaticon.com/128/5573/5573014.png')),
                                          ),
                                        ),
                                        Container(
                                          // margin:
                                          //     EdgeInsets.symmetric(vertical: 10),
                                          child: Text(
                                            'Urgent Notification',
                                            style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                color: "630000".toColor(),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Container(
                                //   margin: EdgeInsets.symmetric(vertical: 10),
                                //   height: 150,
                                //   width: MediaQuery.of(context).size.width / 2.3,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(8),
                                //       color: Colors.white,
                                //       boxShadow: [BoxShadow(blurRadius: 5)]),
                                //   child: Column(
                                //     children: [
                                //       Container(
                                //         height: 100,
                                //         margin:
                                //             EdgeInsets.symmetric(vertical: 10),
                                //         // width: 80,
                                //         decoration: BoxDecoration(
                                //           image: DecorationImage(
                                //               image: NetworkImage(
                                //                   'https://cdn-icons.flaticon.com/png/128/1821/premium/1821820.png?token=exp=1638937042~hmac=2eba228712d089236593e30a8247dabb')),
                                //         ),
                                //       ),
                                //       Container(
                                //         // margin:
                                //         //     EdgeInsets.symmetric(vertical: 10),
                                //         child: Text(
                                //           'History',
                                //           style: GoogleFonts.poppins(
                                //               fontSize: 18,
                                //               color: "630000".toColor(),
                                //               fontWeight: FontWeight.w500),
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
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
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
