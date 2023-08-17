// ignore: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TappableText extends StatefulWidget {
  const TappableText({super.key, required this.textColor});
  final Color textColor;

  @override
  // ignore: library_private_types_in_public_api
  _TappableTextState createState() => _TappableTextState();
}

class _TappableTextState extends State<TappableText> {
  final String fullText = "Oneloc’un mobil uygulamasına giriş yapan kullanıcılar Gizlilik Politikası’na ve Kullanıcı Sözleşmesi’ne tabidir.";

  void _onPrivacyPolicyTapped() {
    print("Gizlilik politikası tıklandı.");
    // Gizlilik politikası ile ilgili işlemleri burada gerçekleştirin.
  }

  void _onTermsTapped() {
    print("Kullanıcı sözleşmesi tıklandı.");
    // Kullanıcı sözleşmesi ile ilgili işlemleri burada gerçekleştirin.
  }

  @override
  Widget build(BuildContext context) {
    final List<TextSpan> textSpans = [];

    int currentIndex = 0;
    while (currentIndex < fullText.length) {
      final privacyIndex = fullText.indexOf("Gizlilik Politikası", currentIndex);
      final termsIndex = fullText.indexOf("Kullanıcı Sözleşmesi", currentIndex);

      if (privacyIndex == -1 && termsIndex == -1) {
        textSpans.add(TextSpan(text: fullText.substring(currentIndex),
        
        style: TextStyle(
          fontSize: 12.sp,
          fontFamily: 'Roboto-Regular'
        )));
        break;
      }

      if (privacyIndex != -1 && (privacyIndex < termsIndex || termsIndex == -1)) {
        textSpans.add(TextSpan(text: fullText.substring(currentIndex, privacyIndex)));
        textSpans.add(
          TextSpan(
            text: "Gizlilik Politikası",
            style: TextStyle(color: widget.textColor, fontSize: 12.sp,fontFamily: 'Roboto-Bold',decoration: TextDecoration.underline ),
            recognizer: TapGestureRecognizer()..onTap = _onPrivacyPolicyTapped,
          ),
        );
        currentIndex = privacyIndex + "Gizlilik Politikası".length;
      } else if (termsIndex != -1) {
        textSpans.add(TextSpan(text: fullText.substring(currentIndex, termsIndex)));
        textSpans.add(
          TextSpan(
            text: "Kullanıcı Sözleşmesi",
            style: TextStyle(color: widget.textColor,fontSize: 12.sp,fontFamily: 'Roboto-Bold',decoration: TextDecoration.underline ),
            recognizer: TapGestureRecognizer()..onTap = _onTermsTapped,
          ),
        );
        currentIndex = termsIndex + "Kullanıcı Sözleşmesi".length;
      }
    }

    return RichText(
      
      text: TextSpan(children: textSpans,style: TextStyle(color: widget.textColor)),
    textAlign: TextAlign.center,
    );
  }
}