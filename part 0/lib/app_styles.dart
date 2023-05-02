import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/* Start of Color Constants */

const Color kWhite = Color(0xffffffff);
const Color kWhiteF7 = Color(0xfff7f7f7);
const Color kWhiteFA = Color(0xffFAFAFA);
const Color kWhiteEF = Color(0xffEFEFEF);

const Color kBlack = Color(0xff000000);
const Color kBlack0D = Color(0xff0d0d0d);

const Color kGrey = Color(0xffD7D7D7);
const Color kGreyB7 = Color(0xffB7B7B7);
const Color kGrey8E = Color(0xff8E8E8E);
const Color kGrey83 = Color(0xff838383);
const Color kGrey85 = Color(0xff858585);

const Color kBlue = Color(0xff0A8ED9);
const Color kLightBlue = Color(0xffA0DAFB);

/* End of Color Constants */

// =========================== //

/* Start of Gradient Style */

Gradient kLinearGradientBlack = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: <Color>[
    kBlack.withOpacity(0.8),
    kBlack0D.withOpacity(0),
  ],
  tileMode: TileMode.clamp,
);

const Gradient kLinearGradientBlue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    kLightBlue,
    kBlue,
  ],
  tileMode: TileMode.clamp,
);

Gradient kLinearGradientWhite = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    kWhite.withOpacity(0),
    kWhite,
  ],
  tileMode: TileMode.clamp,
);

/* End of Gradient Style */

// =========================== //

/* Start of BorderRadius */

const double kBorderRadius20 = 20.0;
const double kBorderRadius10 = 10.0;
const double kBorderRadius5 = 5.0;

/* End of BorderRadius */

// =========================== //

/* Start of Padding */

const double kPadding32 = 32.0;
const double kPadding24 = 24.0;
const double kPadding20 = 20.0;
const double kPadding16 = 16.0;
const double kPadding8 = 8.0;
const double kPadding4 = 4.0;

/* End of Padding */

// =========================== //

/* Start of Input Style */

final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius10),
  borderSide: const BorderSide(
    color: kWhite,
  ),
);

/* End of Input Style */

// =========================== //

/* Start of Font */


final kRalewayBold = GoogleFonts.raleway(
  fontWeight: FontWeight.w700,
);

final kRalewaySemibold = GoogleFonts.raleway(
  fontWeight: FontWeight.w600,
);

final kRalewayMedium = GoogleFonts.raleway(
  fontWeight: FontWeight.w500,
);

final kRalewayRegular = GoogleFonts.raleway(
  fontWeight: FontWeight.w400,
);

/* End of Font */
