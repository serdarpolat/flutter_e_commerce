import 'package:ecommerce_app/pages/bottom_navigation.dart';
import 'package:ecommerce_app/theme/theme.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<CategoryItem> categoryItems = List<CategoryItem>();
  List<CardItem> cardItems = List<CardItem>();
  List<CardItem> recommendedItems = List<CardItem>();

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

    cardItems.add(CardItem(
        imagePath: 'assets/images/speaker.png',
        title: 'BeoPlay Speaker',
        brand: 'Bang & Olufsen',
        price: "\$730"));
    cardItems.add(CardItem(
        imagePath: 'assets/images/watch.png',
        title: 'Leather Wristwatch',
        brand: 'Tag Heuer',
        price: "\$450"));
    cardItems.add(CardItem(
        imagePath: 'assets/images/smart_speaker.png',
        title: 'Smart Speaker',
        brand: 'Google LLC',
        price: "\$3200"));
    cardItems.add(CardItem(
        imagePath: 'assets/images/smart_luggage.png',
        title: 'Smart Luggage',
        brand: 'Smart Inc.',
        price: "\$1200"));

    recommendedItems.add(CardItem(
        imagePath: 'assets/images/sweater.png',
        title: 'Fit Sweater',
        brand: 'Nike',
        price: "\$720"));

    recommendedItems.add(CardItem(
        imagePath: 'assets/images/baskpack.png',
        title: 'Smart Backpack',
        brand: 'Apple',
        price: "\$600"));

    recommendedItems.add(CardItem(
        imagePath: 'assets/images/nike_sweater.png',
        title: 'Long Sleeve',
        brand: 'Nike',
        price: "\$720"));
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
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
                            style:
                                TextStyle(fontSize: 18, color: greyTitleColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      height: 320,
                      width: screenSize.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: cardItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 164,
                                  height: 240,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            cardItems[index].imagePath),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  cardItems[index].title,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  cardItems[index].brand,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: greyTitleColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  cardItems[index].price,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: buttonColor,
                                  ),
                                ),
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
                            'Discount',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'See All',
                            style:
                                TextStyle(fontSize: 18, color: greyTitleColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Container(
                        height: 160,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/promo_image.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Text(
                        'Featured Brands',
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
                      margin: EdgeInsets.only(left: 16),
                      width: screenSize.width,
                      height: 80,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: <Widget>[
                            FeaturedBrands(
                              logoPath: 'assets/icons/bo_logo.png',
                              brand: 'B&o',
                              productsCount: 5693,
                            ),
                            FeaturedBrands(
                              logoPath: 'assets/icons/beats_logo.png',
                              brand: 'Beats',
                              productsCount: 1124,
                            ),
                            FeaturedBrands(
                              logoPath: 'assets/icons/apple_logo.png',
                              brand: 'Apple',
                              productsCount: 2067,
                            ),
                          ],
                        ),
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
                            'Recommended',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'See All',
                            style:
                                TextStyle(fontSize: 18, color: greyTitleColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      height: 320,
                      width: screenSize.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: recommendedItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 164,
                                  height: 240,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            recommendedItems[index].imagePath),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  recommendedItems[index].title,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  recommendedItems[index].brand,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: greyTitleColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  recommendedItems[index].price,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: buttonColor,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 60),
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
                                contentPadding: const EdgeInsets.only(top: 35),
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
                            'https://raw.githubusercontent.com/serdarpolat/flutter_e_commerce/master/assets/icons/Search_Camera.png',
                          ),
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: screenSize.width,
                height: 84,
                child: BottomNavigation(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeaturedBrands extends StatelessWidget {
  final String logoPath;
  final String brand;
  final int productsCount;

  FeaturedBrands({this.logoPath, this.brand, this.productsCount});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 178,
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              logoPath,
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  brand,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  '$productsCount Products',
                  style: TextStyle(
                    color: greyTitleColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem {
  final String imagePath;
  final String title;
  final String brand;
  final String price;

  CardItem({this.imagePath, this.title, this.brand, this.price});
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
