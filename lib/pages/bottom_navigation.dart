import 'package:flutter/material.dart';

class BottomNavigationClass {
  bool isSelected;
  String imagePath;
  String title;

  BottomNavigationClass(this.isSelected, this.imagePath, this.title);
}

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<BottomNavigationClass> bottomData = new List<BottomNavigationClass>();

  @override
  void initState() {
    super.initState();
    bottomData.add(BottomNavigationClass(
        true, 'assets/icons/Icon_Explore.png', 'Explore'));
    bottomData.add(
        BottomNavigationClass(false, 'assets/icons/Icon_Cart.png', 'Cart'));
    bottomData.add(
        BottomNavigationClass(false, 'assets/icons/Icon_User.png', 'User'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _rowItems(),
        ),
      ),
    );
  }

  List<Widget> _rowItems() {
    return List<Widget>.generate(bottomData.length, (int index) {
      return InkWell(
        splashColor: Colors.purple,
        onTap: () {
          setState(() {
            bottomData.forEach((element) => element.isSelected = false);
            bottomData[index].isSelected = true;
          });
        },
        child: BottomNavigationItem(bottomData[index]),
      );
    });
  }
}

class BottomNavigationItem extends StatelessWidget {
  final BottomNavigationClass _items;

  BottomNavigationItem(this._items);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        child: _items.isSelected
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _items.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ],
              )
            : Image.asset(
                _items.imagePath,
                height: 24,
              ),
      ),
    );
  }
}
