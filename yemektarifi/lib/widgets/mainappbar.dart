// @dart=2.9
import 'package:flutter/material.dart';
import 'package:yemektarifi/helpers/appcolors.dart';
import 'package:yemektarifi/helpers/iconhelper.dart';
import 'package:yemektarifi/widgets/iconfont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;

  MainAppBar({
    this.themeColor = AppColors.MAIN_COLOR,
  });

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: IconFont(
          iconName: IconFontHelper.SPICES,
          color: widget.themeColor,
          size: 40,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: widget.themeColor),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(10),
          child: ClipOval(child: Image.asset('assets/imgs/me.jpg')),
        )
      ],
    );
  }
}
