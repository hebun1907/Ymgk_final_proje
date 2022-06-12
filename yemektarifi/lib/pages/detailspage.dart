// @dart=2.9
import 'package:flutter/material.dart';
import 'package:yemektarifi/helpers/appcolors.dart';
import 'package:yemektarifi/models/categorypart.dart';
import 'package:yemektarifi/models/subcategory.dart';
import 'package:yemektarifi/widgets/categoryicon.dart';
import 'package:yemektarifi/widgets/categorypartslist.dart';
import 'package:yemektarifi/widgets/mainappbar.dart';

class DetailsPage extends StatefulWidget {
  SubCategory subCategory;

  DetailsPage({
    this.subCategory,
  });

  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Column(children: [
              ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  child: Stack(children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/imgs/' +
                                  widget.subCategory.imgName +
                                  '_desc.png'),
                              fit: BoxFit.cover)),
                    ),
                    Positioned.fill(
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.transparent
                          ]))),
                    ),
                    Positioned.fill(
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.transparent
                          ]))),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryIcon(
                                  color: widget.subCategory.color,
                                  iconName: widget.subCategory.icon,
                                  size: 50),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(widget.subCategory.name,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: widget.subCategory.color,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                    Positioned(
                        right: 20,
                        top: 100,
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 5, left: 15, right: 15, bottom: 8),
                          decoration: BoxDecoration(
                              color: AppColors.MAIN_COLOR,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 20,
                                    offset: Offset.zero)
                              ]),
                        )),
                    MainAppBar(
                      themeColor: Colors.white,
                    )
                  ])),
              Expanded(
                  child: SingleChildScrollView(
                      child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                    CategoryPartsList(
                      subCategory: widget.subCategory,
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(text: 'Kolaylıklar, Ellerinize Sağlık  '),
                          TextSpan(
                              text: '' + ' ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: '', style: TextStyle(fontSize: 12))
                        ])),
                      ),
                      Container(
                          height: 200,
                          child: ListView.builder(
                              // scrollDirection: Axis.horizontal,
                              itemCount: 1,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.subCategory.parts
                                          .forEach((CategoryPart part) {
                                        part.isSelected =
                                            widget.subCategory.parts[index] ==
                                                part;
                                      });
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Center(
                                            child: Text(widget.subCategory
                                                .parts[index].konu)),
                                      )
                                    ],
                                  ),
                                );
                              }))
                      /* Container(
                        child: Center(child: Text(widget.subCategory.parts[index].name)),
                      )*/
                    ])
                  ]))))
            ])));
  }
}
