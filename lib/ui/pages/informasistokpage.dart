import 'package:donor_darah/models/schedlu.dart';
import 'package:donor_darah/ui/widgets/informasidarah_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class InformasiStokPage extends StatelessWidget {
  bool _pinned = true;
  bool _floating = false;

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
                              child: Text('Stok Darah',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Container(
                              width: 118,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: '630000'.toColor(),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Icon(
                              Icons.arrow_back_ios,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  // color: Colors.blue,
                  child: Column(
                    children:
                        mockSchedule.map((e) => StokDarahCard(e)).toList(),
                  ),
                ),
              ]))
            ],
          ))
        ],
      ),
    );
  }
}
