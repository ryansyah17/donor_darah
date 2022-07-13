// ignore_for_file: deprecated_member_use

import 'package:donor_darah/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class GeneralLogin extends StatelessWidget {
  final String? title;
  final Function? onBackButtonPressed;
  final Widget? child;

  GeneralLogin({
    this.title,
    this.onBackButtonPressed,
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
        ),
        // shadowColor: whiteColor,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.green),
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: ijauColor,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [],
                ),
                SizedBox(height: 1),
                child ?? SizedBox(),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: double.infinity,
                  height: defaultMargin,
                  color: whiteColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
