import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sattorov_sayti/models/stat.dart';
import 'package:sattorov_sayti/utils/constants.dart';
import 'package:sattorov_sayti/utils/screen_helper.dart';
import 'package:url_launcher/url_launcher.dart';

final List<Stat> stats = [
  Stat(
      count: "160K",
      text: "obunachi",
      icon: FontAwesomeIcons.instagram,
      url: "https://www.instagram.com/shahboz_sattorov1"),
  Stat(
      count: "564K",
      text: "obunachi",
      icon: FontAwesomeIcons.youtube,
      url: "https://www.youtube.com/c/ShahbozSattorov/"),
  Stat(
      count: "244K",
      text: "obunachi",
      icon: FontAwesomeIcons.tiktok,
      url: "https://www.tiktok.com/@shahboz_sattorov"),
  Stat(
      count: "2.2K",
      text: "obunachi",
      icon: FontAwesomeIcons.telegram,
      url: "https://t.me/Shahboz_Sattorov"),
];

class PortfolioStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return Container(
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
            return Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              children: stats.map((stat) {
                return GestureDetector(
                  onTap: () {
                    _launchUrl(stat.url);
                  },
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      // Just use the helper here really
                      width: ScreenHelper.isMobile(context)
                          ? constraint.maxWidth / 2.0 - 20
                          : (constraint.maxWidth / 4.0 - 20),
                      child: Row(
                        children: [
                          FaIcon(
                            stat.icon,
                            color: kPrimaryColor,
                            size: 40,
                          ),
                          const SizedBox(width: 16),
                          Column(
                            children: [
                              Text(
                                stat.count,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                stat.text,
                                style: const TextStyle(
                                    color: kCaptionColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      )),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw 'Could not launch $_url';
    }
  }
}
