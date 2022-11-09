import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sattorov_sayti/models/testimonial.dart';
import 'package:sattorov_sayti/utils/constants.dart';
import 'package:sattorov_sayti/utils/screen_helper.dart';

final List<Testimonial> testimonials = [
  Testimonial(
    text:
        "This is a testimonial text from Janny Stone. Michele is a professional at what he does and never ceases to amaze me with his beautiful works. I will like to work with him in the future again.",
    occupation: "Product Designer",
    personName: "JANNY STONE",
    profilePhoto: "assets/female.png",
  ),
  Testimonial(
    text:
        "This is a testimonial text from Ken Williams. Michele is a professional at what he does and never ceases to amaze me with his beautiful works. I will like to work with him in the future again.",
    occupation: "Art Director",
    personName: "KEN WILLIAMS",
    profilePhoto: "assets/male.png",
  )
];

class TestimonialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }
}

Widget _buildUi(double width) {
  return Center(
    child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ResponsiveWrapper(
          maxWidth: width,
          minWidth: width,
          defaultScale: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TESTIMONIALS",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0,
                  height: 1.3,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 400.0),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "This is the portfolio section. There is alot of work here",
                        style: TextStyle(color: Colors.white, height: 1.8),
                      ),
                      TextSpan(
                          text: " click here to contact us",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700,
                            height: 1.8,
                          )),
                      TextSpan(
                        text: ". Please subscribe to me youtube channel :-)",
                        style: TextStyle(color: Colors.white, height: 1.8),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              Flex(
                direction: ScreenHelper.isMobile(context)
                    ? Axis.vertical
                    : Axis.horizontal,
                // Lets map
                children: testimonials.map((testimonial) {
                  return Expanded(
                    flex: ScreenHelper.isMobile(context) ? 0 : 1,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.only(bottom: 50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/quote.png",
                              width: 50.0,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            testimonial.text,
                            style: const TextStyle(
                              color: kCaptionColor,
                              height: 1.8,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25.0,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                  testimonial.profilePhoto,
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    testimonial.personName,
                                    style: GoogleFonts.oswald(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    testimonial.occupation,
                                    style: const TextStyle(
                                      color: kCaptionColor,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    ),
  );
}