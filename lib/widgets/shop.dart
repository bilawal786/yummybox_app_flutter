import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummy_box/widgets/product.dart';

import '../provider/product_provider.dart';

class MyShop extends StatefulWidget {
  const MyShop({Key? key}) : super(key: key);

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {

  var _isInit = true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      Provider.of<ProductProvider>(context).getProducts();
    }
    _isInit = false;
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    final prod = Provider.of<ProductProvider>(context, listen: false);
    final proddata = prod.productItems;
    return Container(
      height: 300,

      child: Expanded(
        child: ListView.builder(
        itemCount: proddata.length,
          physics: NeverScrollableScrollPhysics(),
        itemBuilder: (ctx, index) => Container(),
        ),
      ),
    );
  }
}
