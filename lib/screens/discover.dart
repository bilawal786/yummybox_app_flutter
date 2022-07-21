import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yummy_box/provider/category_provider.dart';
import 'package:yummy_box/provider/pre_provider.dart';
import 'package:yummy_box/provider/product_provider.dart';
import 'package:yummy_box/screens/productdetail.dart';
import 'package:yummy_box/widgets/product.dart';
import 'package:yummy_box/widgets/shop.dart';

import '../provider/banner_provider.dart';
import 'package:provider/provider.dart';

class MyDiscover extends StatefulWidget {
  const MyDiscover({Key? key}) : super(key: key);

  @override
  State<MyDiscover> createState() => _MyDiscoverState();
}

class _MyDiscoverState extends State<MyDiscover> {
  var _isInit = true;

  @override
  void didChangeDependencies() {
    if(_isInit){
      Provider.of<BannerProvider>(context).getBanners();
      Provider.of<CategoryProvider>(context).getCategories();
      Provider.of<PreProvider>(context).getPre();
      Provider.of<ProductProvider>(context).getProducts();
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  final List _preTitle = ['Renee', '0 Marche', 'Denial'];

  @override
  Widget build(BuildContext context) {
    final bannerData = Provider.of<BannerProvider>(context, listen: false);
    final banner = bannerData.bannerItems;
    final categoriesData = Provider.of<CategoryProvider>(context, listen: false);
    final categories = categoriesData.categoryItems;
    final preData = Provider.of<PreProvider>(context, listen: false);
    final pre = preData.preItems;
    final productData = Provider.of<ProductProvider>(context);
    final products = productData.productItems;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                banner.length == 0 ? SizedBox(height:200, child: Center(child: CircularProgressIndicator())) : CarouselSlider.builder(
                  itemCount: banner.length,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                banner[itemIndex].images),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    options: CarouselOptions(
                      height: 230.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 400),
                      viewportFraction: 1,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Our Categories",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                categories.length == 0 ? SizedBox(height:200, child: Center(child: CircularProgressIndicator())) : Container(
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 3 / 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemCount: categories.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Card(
                          child: GridTile(
                              footer: GridItemTitle(
                                title: categories[index].title,
                              ),
                              child: GridItem(
                                  imageUrl: "http://app.yummybox.fr/"+categories[index].image, quantity : categories[index].quantity)),
                        );
                      }),
                ),

                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Premium",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                categories.length == 0 ? SizedBox(height:200, child: Center(child: CircularProgressIndicator())):
                Container(
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 3 / 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemCount: pre.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Card(
                          child: GridTile(
                              footer: GridItemTitle(
                                title: pre[index].title,
                              ),
                              child: GridItem(
                                  imageUrl: 'https://app.yummybox.fr/'+pre[index].image, quantity: 0)),
                        );
                      }),
                ),
                SizedBox(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: products.length,
                      itemBuilder: (ctx, index) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProucttDetail(products: products[index],)));
                            },
                            child:  ProductWidget(products: products[index]),
                          ),
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

class GridItemTitle extends StatelessWidget {
  final String title;
  const GridItemTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imageUrl;
  final int quantity;

  const GridItem({
    Key? key,
    required this.imageUrl, required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Badge(
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        borderRadius: BorderRadius.circular(4.0),
        shape: BadgeShape.square,
        badgeContent: Text(
          quantity.toString(),
          style: TextStyle(color: Colors.white),
        ),
        badgeColor: Colors.black,
        position: BadgePosition.topEnd(top: -6, end: -6),
        child: Image.network(
          imageUrl,
          height: 50,
          width: 50,
        ),
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
    );
  }
}
