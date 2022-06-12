// @dart=2.9
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:yemektarifi/helpers/appcolors.dart';
import 'package:yemektarifi/helpers/iconhelper.dart';
import 'package:yemektarifi/widgets/iconfont.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;
  SplashPage({
    this.duration,
    this.goToPage,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });
    return Scaffold(
      body: Container(
        color: AppColors.MAIN_COLOR,
        alignment: Alignment.center,
        child: IconFont(
          color: Colors.white,
          iconName: IconFontHelper.SPICES,
          size: 100,
        ),
      ),
    );
  }
}
