import 'package:donor_darah/models/schedlu.dart';
import 'package:donor_darah/shared/shared.dart';
import 'package:donor_darah/ui/pages/cobamap.dart';
import 'package:donor_darah/ui/pages/detailstokdarahpage.dart';
import 'package:donor_darah/ui/pages/pick_location.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StokDarahCard extends StatelessWidget {
  final Schedule? schedule;
  final Widget? widget;

  StokDarahCard(this.schedule, {this.widget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MapView()));
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width - 50,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black26),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.car_crash_outlined,
                    size: 35,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            schedule!.title!,
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'Informasi Stok Darah',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    color: primer,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(schedule!.picture!)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
