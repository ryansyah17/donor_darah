import 'package:donor_darah/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class UrgentNotificationPage extends StatefulWidget {
  @override
  State<UrgentNotificationPage> createState() => _UrgentNotificationPageState();
}

class _UrgentNotificationPageState extends State<UrgentNotificationPage> {
  bool _pinned = true;

  bool _floating = false;

  TextEditingController namaPasien = TextEditingController(text: '');
  TextEditingController umurPasien = TextEditingController(text: '');
  TextEditingController alamatPasien = TextEditingController(text: '');
  TextEditingController banyakDarah = TextEditingController(text: '');
  TextEditingController golDarah = TextEditingController(text: '');
  TextEditingController resusDarah = TextEditingController(text: '');
  TextEditingController kontak = TextEditingController(text: '');

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
                              child: Text('Urgent Notif',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Container(
                              width: 130,
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
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 60,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/oke.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: ValueKey('namaPasien'),
                        controller: namaPasien,
                        keyboardType: TextInputType.name,
                        style: blackFontStyle2,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          labelText: 'Nama Pasien',
                          labelStyle: TextStyle(fontSize: 14),
                        ),
                        validator: (value) {
                          RegExp regExp = RegExp(r'^.{4,}$');
                          if (value!.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          if (!regExp.hasMatch(value)) {
                            return 'Nama tidak valid (Min. 4 karakter)';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            namaPasien.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: ValueKey('umurPasien'),
                        controller: umurPasien,
                        keyboardType: TextInputType.number,
                        style: blackFontStyle2,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          labelText: 'Umur Pasien',
                          labelStyle: TextStyle(fontSize: 14),
                        ),
                        validator: (value) {
                          RegExp regExp = RegExp(r'^.{4,}$');
                          if (value!.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          if (!regExp.hasMatch(value)) {
                            return 'Nama tidak valid (Min. 4 karakter)';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            umurPasien.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: ValueKey('alamatPasien'),
                        controller: alamatPasien,
                        keyboardType: TextInputType.name,
                        style: blackFontStyle2,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          labelText: 'Alamat Pasien / tempat dirawat',
                          labelStyle: TextStyle(fontSize: 14),
                        ),
                        validator: (value) {
                          RegExp regExp = RegExp(r'^.{4,}$');
                          if (value!.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          if (!regExp.hasMatch(value)) {
                            return 'Nama tidak valid (Min. 4 karakter)';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            alamatPasien.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: ValueKey('banyakDarah'),
                        controller: banyakDarah,
                        keyboardType: TextInputType.number,
                        style: blackFontStyle2,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          labelText: 'Kebutuhan Darah',
                          labelStyle: TextStyle(fontSize: 14),
                        ),
                        validator: (value) {
                          RegExp regExp = RegExp(r'^.{4,}$');
                          if (value!.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          if (!regExp.hasMatch(value)) {
                            return 'Nama tidak valid (Min. 4 karakter)';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            banyakDarah.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: ValueKey('golDarah'),
                        controller: golDarah,
                        keyboardType: TextInputType.name,
                        style: blackFontStyle2,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          labelText: 'Golongan Darah',
                          labelStyle: TextStyle(fontSize: 14),
                        ),
                        validator: (value) {
                          RegExp regExp = RegExp(r'^.{4,}$');
                          if (value!.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          if (!regExp.hasMatch(value)) {
                            return 'Nama tidak valid (Min. 4 karakter)';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            golDarah.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: ValueKey('resusDarah'),
                        controller: resusDarah,
                        keyboardType: TextInputType.name,
                        style: blackFontStyle2,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          labelText: 'Resus Darah',
                          labelStyle: TextStyle(fontSize: 14),
                        ),
                        validator: (value) {
                          RegExp regExp = RegExp(r'^.{4,}$');
                          if (value!.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          if (!regExp.hasMatch(value)) {
                            return 'Nama tidak valid (Min. 4 karakter)';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            resusDarah.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        key: ValueKey('kontak'),
                        controller: kontak,
                        keyboardType: TextInputType.phone,
                        style: blackFontStyle2,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          labelText: 'Kontak Keluarga',
                          labelStyle: TextStyle(fontSize: 14),
                        ),
                        validator: (value) {
                          RegExp regExp = RegExp(r'^.{4,}$');
                          if (value!.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          if (!regExp.hasMatch(value)) {
                            return 'Nama tidak valid (Min. 4 karakter)';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            golDarah.text = value!;
                          });
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(bottom: 30),
                              height: 50,
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              decoration: BoxDecoration(
                                color: primer,
                                boxShadow: [
                                  BoxShadow(blurRadius: 5),
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  'Buat Notifikasi',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 30),
                              height: 50,
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              decoration: BoxDecoration(
                                color: primer,
                                boxShadow: [
                                  BoxShadow(blurRadius: 5),
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  'Batalkan',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
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
