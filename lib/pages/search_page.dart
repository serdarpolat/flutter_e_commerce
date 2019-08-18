import 'dart:convert';

import 'package:ecommerce_app/data/product_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => new _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Product> _products = List<Product>();
  List<Product> _productsForDisplay = List<Product>();

  Future<List<Product>> fetchProducts() async {
    var url =
        "https://raw.githubusercontent.com/serdarpolat/flutter_e_commerce/master/assets/json/products.json";
    var response = await http.get(url);

    var products = List<Product>();

    if (response.statusCode == 200) {
      var productsJson = json.decode(response.body);

      for (var productJson in productsJson) {
        products.add(Product.fromJson(productJson));
      }
    }

    return products;
  }

  @override
  void initState() {
    super.initState();
    fetchProducts().then((value) {
      setState(() {
        _products.addAll(value);
        _productsForDisplay = _products.where((product) {
          var pt = product.brand;
          return pt.contains("Apple");
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 85.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _productsForDisplay.length,
                itemBuilder: (context, index) {
                  return _listItem(index);
                },
              ),
            ),
            _searchBar(screenSize.width),
          ],
        ),
      ),
    );
  }

  Widget _searchBar(double width) {
    return Container(
      width: width,
      height: 110,
      color: Colors.white,
      child: Container(
        width: width,
        height: 50,
        margin: EdgeInsets.only(top: 50, bottom: 10),
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
                onChanged: (text) {
                  text = text.toLowerCase();
                  setState(() {
                    _productsForDisplay = _products.where((product) {
                      var productTitle = product.title.toLowerCase();
                      return productTitle.contains(text);
                    }).toList();
                  });
                },
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _listItem(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        _productsForDisplay[index].title,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
