import 'package:donor_darah/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:toast/toast.dart';

class DaftarDonorPage extends StatefulWidget {
  @override
  State<DaftarDonorPage> createState() => _DaftarDonorPageState();
}

class _DaftarDonorPageState extends State<DaftarDonorPage> {
  TextEditingController namaLengkap = TextEditingController(text: '');
  TextEditingController tempatLahir = TextEditingController(text: '');
  TextEditingController tanggalLahir = TextEditingController(text: '');
  TextEditingController umur = TextEditingController(text: '');
  TextEditingController jenisKelamin = TextEditingController(text: '');
  TextEditingController alamat = TextEditingController(text: '');
  TextEditingController noHandphone = TextEditingController(text: '');
  TextEditingController golonganDarah = TextEditingController(text: '');
  TextEditingController beratBadan = TextEditingController(text: '');
  TextEditingController tinggiBadan = TextEditingController(text: '');
  TextEditingController tekananDarah = TextEditingController(text: '');
  TextEditingController kadarHb = TextEditingController(text: '');
  TextEditingController tanggalDonor = TextEditingController(text: '');

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
                              child: Text('Daftar Donor',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Container(
                              width: 140,
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
                        // margin: EdgeInsets.only(top: 10),
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
                        key: ValueKey('nama'),
                        controller: namaLengkap,
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
                          labelText: 'Nama Lengkap',
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
                            namaLengkap.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('tempat'),
                        controller: tempatLahir,
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
                          labelText: 'Tempat Lahir',
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
                            tempatLahir.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('tanggal'),
                        controller: tanggalLahir,
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
                          labelText: 'Tanggal Lahir',
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
                            tanggalLahir.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('umur'),
                        controller: umur,
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
                          labelText: 'Umur',
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
                            umur.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('jenisKelamin'),
                        controller: jenisKelamin,
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
                          labelText: 'Jenis Kelamin',
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
                            jenisKelamin.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('alamat'),
                        controller: alamat,
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
                          labelText: 'Alamat',
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
                            alamat.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('Nohandphone'),
                        controller: noHandphone,
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
                          labelText: 'No Handphone',
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
                            noHandphone.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('golonganDarah'),
                        controller: golonganDarah,
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
                            golonganDarah.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('beratBadan'),
                        controller: beratBadan,
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
                          labelText: 'Berat Badan',
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
                            beratBadan.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('tekananDarah'),
                        controller: tekananDarah,
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
                          labelText: 'Tekanan Darah',
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
                            tekananDarah.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('kadarHb'),
                        controller: kadarHb,
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
                          labelText: 'Kadar HB',
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
                            kadarHb.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: ValueKey('tanggalDonor'),
                        controller: tanggalDonor,
                        keyboardType: TextInputType.name,
                        style: blackFontStyle2,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          labelText: 'Tanggal Donor',
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
                            tanggalDonor.text = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 30,
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
                                  'Submit',
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
                                  'Cancel',
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
