import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sattorov_sayti/pages/home/components/carousel.dart';
import 'package:sattorov_sayti/pages/home/components/cv_section.dart';
import 'package:sattorov_sayti/pages/home/components/education_section.dart';
import 'package:sattorov_sayti/pages/home/components/footer.dart';
import 'package:sattorov_sayti/pages/home/components/header.dart';
import 'package:sattorov_sayti/pages/home/components/ios_app_ad.dart';
import 'package:sattorov_sayti/pages/home/components/portfolio_stats.dart';
import 'package:sattorov_sayti/pages/home/components/skill_section.dart';
import 'package:sattorov_sayti/pages/home/components/sponsors.dart';
import 'package:sattorov_sayti/pages/home/components/testimonial_widget.dart';
import 'package:sattorov_sayti/pages/home/components/website_ad.dart';
import 'package:sattorov_sayti/utils/constants.dart';
import 'package:sattorov_sayti/utils/globals.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Carousel(),
              const SizedBox(
                height: 20.0,
              ),
              CvSection(),
              IosAppAd(),
              const SizedBox(
                height: 70.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: PortfolioStats(),
              ),
              //SkillSection(),
              //  const SizedBox(
              //    height: 50.0,
              //  ),
              // Sponsors(),
              //  const SizedBox(
              //    height: 50.0,
              //  ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 100,
                  bottom: 10,
                  left: 12,
                  right: 12,
                ),
                child: Center(
                  child: Text(
                    "Murojaat qilish uchun".toUpperCase(),
                    style: const TextStyle(
                      color: kCaptionColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
