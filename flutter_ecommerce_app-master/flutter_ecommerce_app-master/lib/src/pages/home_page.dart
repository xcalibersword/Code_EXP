import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/model/data.dart';
import 'package:flutter_ecommerce_app/src/themes/light_color.dart';
import 'package:flutter_ecommerce_app/src/themes/theme.dart';
import 'package:flutter_ecommerce_app/src/widgets/product_card.dart';
import 'package:flutter_ecommerce_app/src/widgets/product_icon.dart';
import 'package:flutter_ecommerce_app/src/widgets/extentions.dart';
import 'package:flutter_ecommerce_app/src/widgets/customWidget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isViewAll = false;
  Widget _icon(IconData icon, {Color color = LightColor.iconColor}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          color: Theme.of(context).backgroundColor,
          boxShadow: AppTheme.shadow),
      child: Icon(
        icon,
        color: color,
      ),
    ).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget _categoryWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: AppData.categoryList
            .map(
              (category) => ProductIcon(
                model: category,
                onSelected: (model) {
                  setState(() {
                    AppData.categoryList.forEach((item) {
                      item.isSelected = false;
                    });
                    model.isSelected = true;
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _productWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: AppTheme.fullWidth(context) * .7,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 4 / 3,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20),
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children: AppData.productList
            .map(
              (product) => ProductCard(
                product: product,
                onSelected: (model) {
                  setState(() {
                    AppData.productList.forEach((item) {
                      item.isSelected = false;
                    });
                    model.isSelected = true;
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _search() {
    return Container(
      margin: AppTheme.padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: LightColor.lightGrey.withAlpha(100),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Opportunities/Courses",
                    hintStyle: TextStyle(fontSize: 12),
                    contentPadding:
                        EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
                    prefixIcon: Icon(Icons.search, color: Colors.black54)),
              ),
            ),
          ),
          SizedBox(width: 20),
          _icon(Icons.filter_list, color: Colors.black54)
        ],
      ),
    );
  }

  Widget _getNewsTile1(String image) {
    return ListTile(
        onTap: (){},
        title: Text(
          "Care packs to thank those in front line of Covid-19 fight",
          style: TextStyle(fontSize: getFontSize(context,14), fontWeight: FontWeight.w500),
        ),
        subtitle: Text('02 June 2020',style: TextStyle(fontSize: getFontSize(context,12)),),
        trailing: Image.asset(
          image,
        ));
  }

  Widget _getNewsTile2(String image) {
    return ListTile(
        onTap: (){},
        title: Text(
          "Volunteers from all walks of life join Singapore's fight against virus",
          style: TextStyle(fontSize: getFontSize(context,14), fontWeight: FontWeight.w500),
        ),
        subtitle: Text('01 June 2020',style: TextStyle(fontSize: getFontSize(context,12)),),
        trailing: Image.asset(
          image,
        ));
  }

  Widget _getNewsTile3(String image) {
    return ListTile(
        onTap: (){},
        title: Text(
          "Newcomers lend a hand in their adopted home",
          style: TextStyle(fontSize: getFontSize(context,14), fontWeight: FontWeight.w500),
        ),
        subtitle: Text('31 May 2020',style: TextStyle(fontSize: getFontSize(context,12)),),
        trailing: Image.asset(
          image,
        ));
  }

  Widget _getNewsTile4(String image) {
    return ListTile(
        onTap: (){},
        title: Text(
          "We, the citizens: Immigrants, new citizens volunteer in the fight against Covid-19",
          style: TextStyle(fontSize: getFontSize(context,14), fontWeight: FontWeight.w500),
        ),
        subtitle: Text('30 May 2020',style: TextStyle(fontSize: getFontSize(context,12)),),
        trailing: Image.asset(
          image,
        ));
  }

  Widget _getNewsTile5(String image) {
    return ListTile(
        onTap: (){},
        title: Text(
          "Lecturer helps deliver meals to residents breaking fast",
          style: TextStyle(fontSize: getFontSize(context,14), fontWeight: FontWeight.w500),
        ),
        subtitle: Text('18 May 2020',style: TextStyle(fontSize: getFontSize(context,12)),),
        trailing: Image.asset(
          image,
        ));
  }

  Widget _volunteerNews() {
    return AnimatedContainer(
      curve: Curves.linearToEaseOut,
      duration: Duration(milliseconds: 300),
      height: isViewAll ? MediaQuery.of(context).size.height - getDimention(context, 300) : getDimention(context, 250) ,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomCenter,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20,),
                  child:  Text(
                    'Volunteering News',
                    style: TextStyle(fontSize: getFontSize(context,18), fontWeight: FontWeight.w800),
                  ),
                ),
                FlatButton(
                  child: Text(
                    'View All',
                    style: TextStyle(fontSize: getFontSize(context,16), color: Color(0xff6c79dc)),
                  ),
                  onPressed: () {
                    setState(() {
                      isViewAll = !isViewAll;
                      // viewAllHeight = isViewAll ?  getDimention(context, 290) : 0;
                    });
                  },
                ),
              ]),
          _getNewsTile1('assets/news_1.png'),
          Divider(),
          _getNewsTile2('assets/news_2.png'),
          Divider(),
          _getNewsTile3('assets/news_3.png'),
          Divider(),
          _getNewsTile4('assets/news_4.png'),
          Divider(),
          _getNewsTile5('assets/news_5.png'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 210,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _search(),
            _categoryWidget(),
            _productWidget(),
            _volunteerNews(),
          ],
        ),
      ),
    );
  }
}
