import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:yemektarifi/helpers/appcolors.dart';
import 'package:yemektarifi/helpers/iconhelper.dart';
import 'package:yemektarifi/helpers/utils.dart';
import 'package:yemektarifi/models/category.dart';
import 'package:yemektarifi/pages/selectedcategorypage.dart';
import 'package:yemektarifi/widgets/categorycard.dart';
import 'package:yemektarifi/widgets/iconfont.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: IconFont(
              iconName: IconFontHelper.SPICES,
              color: AppColors.MAIN_COLOR,
              size: 40,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: AppColors.MAIN_COLOR),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(10),
              child: ClipOval(child: Image.asset('assets/imgs/me.jpg')),
            )
          ],
        ),
        body: Container(
            child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text('Kategoriler',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black)),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 100),
                  itemCount: categories.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard(
                        category: categories[index],
                        onCardClick: () {
                          //TODO: navigate to another page
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectedCategoryPage(
                                        selectedCategory:
                                            this.categories[index],
                                      )));
                        });
                  },
                ),
              )
            ],
          ),
        ])));
  }
}
