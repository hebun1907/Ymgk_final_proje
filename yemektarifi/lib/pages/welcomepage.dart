import 'package:flutter/material.dart';

import 'package:yemektarifi/helpers/appcolors.dart';
import 'package:yemektarifi/helpers/iconhelper.dart';
import 'package:yemektarifi/pages/categorylistpage.dart';
import 'package:yemektarifi/widgets/iconfont.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Opacity(
          opacity: 0.7,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                'assets/imgs/of_main_bg.png',
                fit: BoxFit.cover,
              )),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: ClipOval(
                        child: Container(
                          width: 180,
                          height: 180,
                          color: AppColors.MAIN_COLOR,
                          alignment: Alignment.center,
                          child: IconFont(
                            iconName: IconFontHelper.SPICES,
                            color: Colors.white,
                            size: 90,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Ne Pişirsem?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "En lezzetli ve sağlıklı\n Tariflerle beslenelim!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                            highlightColor:
                                AppColors.MAIN_COLOR.withOpacity(0.2),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryListPage()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text("Haydi Başlayalım!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 196, 237, 149),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: AppColors.MAIN_COLOR,
                                    width: 4.0,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
