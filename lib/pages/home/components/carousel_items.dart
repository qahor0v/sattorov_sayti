import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sattorov_sayti/models/carousel_item_model.dart';
import 'package:sattorov_sayti/utils/constants.dart';


List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "XUSH KELIBSIZ!",
            style: GoogleFonts.oswald(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            "SHAHBOZ\nSATTOROV",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.w900,
              //height: 1.3,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            "Bloger | Aktyor | Muallif | Qiziqchi",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),

        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "assets/personn.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);
