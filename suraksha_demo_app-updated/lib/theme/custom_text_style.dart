import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF000000),
        fontSize: 13.fSize,
      );
  // Headline text style
  static get headlineSmallLight => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeAnekGujaratiBlack900 =>
      theme.textTheme.titleLarge!.anekGujarati.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeAnekOdiaBlack900 =>
      theme.textTheme.titleLarge!.anekOdia.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeNotoNastaliqUrduBlack900 =>
      theme.textTheme.titleLarge!.notoNastaliqUrdu.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeNotoSansMalayalamBlack900 =>
      theme.textTheme.titleLarge!.notoSansMalayalam.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOpenSansBlack900 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOpenSansBlack900Regular =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeTiroBanglaBlack900 =>
      theme.textTheme.titleLarge!.tiroBangla.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeTiroDevanagariHindiBlack900 =>
      theme.textTheme.titleLarge!.tiroDevanagariHindi.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeTiroDevanagariMarathiBlack900 =>
      theme.textTheme.titleLarge!.tiroDevanagariMarathi.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeTiroDevanagariSanskritBlack900 =>
      theme.textTheme.titleLarge!.tiroDevanagariSanskrit.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeTiroKannadaBlack900 =>
      theme.textTheme.titleLarge!.tiroKannada.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeTiroTamilBlack900 =>
      theme.textTheme.titleLarge!.tiroTamil.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeTiroTeluguBlack900 =>
      theme.textTheme.titleLarge!.tiroTelugu.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get anekOdia {
    return copyWith(
      fontFamily: 'Anek Odia',
    );
  }

  TextStyle get tiroDevanagariHindi {
    return copyWith(
      fontFamily: 'Tiro Devanagari Hindi',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get tiroDevanagariMarathi {
    return copyWith(
      fontFamily: 'Tiro Devanagari Marathi',
    );
  }

  TextStyle get tiroKannada {
    return copyWith(
      fontFamily: 'Tiro Kannada',
    );
  }

  TextStyle get tiroBangla {
    return copyWith(
      fontFamily: 'Tiro Bangla',
    );
  }

  TextStyle get tiroTamil {
    return copyWith(
      fontFamily: 'Tiro Tamil',
    );
  }

  TextStyle get tiroTelugu {
    return copyWith(
      fontFamily: 'Tiro Telugu',
    );
  }

  TextStyle get tiroDevanagariSanskrit {
    return copyWith(
      fontFamily: 'Tiro Devanagari Sanskrit',
    );
  }

  TextStyle get notoNastaliqUrdu {
    return copyWith(
      fontFamily: 'Noto Nastaliq Urdu',
    );
  }

  TextStyle get caveat {
    return copyWith(
      fontFamily: 'Caveat',
    );
  }

  TextStyle get notoSansMalayalam {
    return copyWith(
      fontFamily: 'Noto Sans Malayalam',
    );
  }

  TextStyle get anekGujarati {
    return copyWith(
      fontFamily: 'Anek Gujarati',
    );
  }
}
