import 'package:ecommerce_app/theme/theme.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<CategoryItem> categoryItems = List<CategoryItem>();

  @override
  void initState() {
    super.initState();
    categoryItems.add(CategoryItem(
      iconPath:
          'https://raw.githubusercontent.com/serdarpolat/flutter_e_commerce/master/assets/icons/men_cat.png',
      catName: 'Men',
    ));
    categoryItems.add(CategoryItem(
      iconPath:
          'https://raw.githubusercontent.com/serdarpolat/flutter_e_commerce/master/assets/icons/women_cat.png',
      catName: 'Women',
    ));
    categoryItems.add(CategoryItem(
      iconPath:
          'https://raw.githubusercontent.com/serdarpolat/flutter_e_commerce/master/assets/icons/devices_cat.png',
      catName: 'Devices',
    ));
    categoryItems.add(CategoryItem(
      iconPath:
          'https://raw.githubusercontent.com/serdarpolat/flutter_e_commerce/master/assets/icons/gadgets_cat.png',
      catName: 'Gatgets',
    ));
    categoryItems.add(CategoryItem(
      iconPath:
          'https://raw.githubusercontent.com/serdarpolat/flutter_e_commerce/master/assets/icons/gaming_cat.png',
      catName: 'Gaming',
    ));
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: screenSize.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: screenSize.width - 92,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(top: 35),
                                  hintText: 'Search...',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/serdarpolat/flutter_e_commerce/master/assets/icons/Search_Camera.png'),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 44,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 100,
                  width: screenSize.width,
                  padding: EdgeInsets.only(left: 16),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: categoryItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 38.0),
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              categoryItems[index].iconPath,
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              categoryItems[index].catName,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Best Selling',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 18,
                          color: greyTitleColor
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryItem {
  final String iconPath;
  final String catName;

  CategoryItem({this.iconPath, this.catName});
}

class ProductItem {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  ProductItem({this.imagePath, this.title, this.subtitle, this.price});
}