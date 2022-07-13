import 'package:donor_darah/models/schedlu.dart';
import 'package:donor_darah/ui/pages/daftardonorpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class ScheduleCard extends StatelessWidget {
  final Schedule? schedule;
  final Widget? widget;

  ScheduleCard(this.schedule, {this.widget});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 4), // changes position of shadow
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Text(
                            schedule!.title!,
                            style: GoogleFonts.poppins(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: '630000'.toColor(),
                              borderRadius: BorderRadius.circular(24)),
                          child: Text(
                            schedule!.types!,
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(Icons.timelapse),
                              ),
                              Container(
                                child: Text(
                                  schedule!.time!,
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(Icons.location_on),
                            ),
                            Container(
                              // margin: EdgeInsets.only(left: 10),
                              width: 170,
                              // color: Colors.black,
                              child: Text(
                                schedule!.location!,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage(schedule!.picture!),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
