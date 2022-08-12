import 'package:flutter/material.dart';

class Product {
  String imageStr = '';
  String name = '';
  String description = '';
  double price = 0.0;
}

class ProductListing extends StatefulWidget {
  const ProductListing({Key? key}) : super(key: key);

  @override
  State<ProductListing> createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {
  //final List<String> entries = <String>['A', 'B', 'C'];
  //final List<int> colorCodes = <int>[600, 500, 100];
  final List<Product> productList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var p = Product();
    p.imageStr = 'assets/images/img_1.jpg';
    p.name = 'iPhone';
    p.description = 'iPhone is the stylist phone ever';
    p.price = 1000;
    productList.add(p);
    p = Product();
    p.imageStr = 'assets/images/img_2.jpg';
    p.name = 'Pixel';
    p.description = 'Pixel is the most featureful phone ever';
    p.price = 800;
    productList.add(p);
    p = Product();
    p.imageStr = 'assets/images/img_3.jpg';
    p.name = 'Laptop';
    p.description = 'Laptop is the most productive development tool';
    p.price = 2000;
    productList.add(p);
    p = Product();
    p.imageStr = 'assets/images/img_4.jpg';
    p.name = 'Tablet';
    p.description = 'Taplet is the most useful device ever for meeting';
    p.price = 1500;
    productList.add(p);
    p = Product();
    p.imageStr = 'assets/images/img_5.jpg';
    p.name = 'Pendrive';
    p.description = 'Pendrive is the stylist pen ever';
    p.price = 1000;
    productList.add(p);
    p = Product();
    p.imageStr = 'assets/images/img_6.jpg';
    p.name = 'iPhone';
    p.description = 'iPhone is the stylist phone ever';
    p.price = 1000;
    productList.add(p);
    p = Product();
    p.imageStr = 'assets/images/img_7.jpg';
    p.name = 'Pixel';
    p.description = 'Pixel is the most featureful phone ever';
    p.price = 800;
    productList.add(p);
    p = Product();
    p.imageStr = 'assets/images/img_8.jpg';
    p.name = 'Laptop';
    p.description = 'Laptop is the most productive development tool';
    p.price = 2000;
    productList.add(p);
    p = Product();
    p.imageStr = 'assets/images/img_9.jpg';
    p.name = 'Tablet';
    p.description = 'Taplet is the most useful device ever for meeting';
    p.price = 1500;
    productList.add(p);
    p = Product();
    p.imageStr = 'assets/images/img_10.jpg';
    p.name = 'Pendrive';
    p.description = 'Pendrive is the stylist pen ever';
    p.price = 1000;
    productList.add(p);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Listing'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView.builder(
          //padding: const EdgeInsets.all(8),
          //itemCount: entries.length,
          itemCount: productList.length,
          itemBuilder: (BuildContext context, int index) {
              return Container(
                //height: 50,
                //color: Colors.amber[colorCodes[index]],
                //child: Center(child: Text('Entry ${entries[index]}')),
                child: Center(
                  child: ProductItem(
                    imageStr: productList[index].imageStr,
                    name: productList[index].name,
                    description: productList[index].description,
                    price: productList[index].price,
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String imageStr;
  final String name;
  final String description;
  final double price;
  const ProductItem({Key? key,
    required this.imageStr,
    required this.name,
    required this.description,
    required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 140,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      //color: Colors.grey[50],
      decoration: BoxDecoration(
        color: Colors.grey[50],
        border: Border.all(
            color: Colors.white,
            width: 1.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      //padding: ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              imageStr,
              //width: ,
              //height: ,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 46,
                    alignment: Alignment.center,
                    child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 46,
                    alignment: Alignment.center,
                    child: Text(description, softWrap: true,),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 46,
                    alignment: Alignment.center,
                    child: Text('Price: ${price.toStringAsFixed(0)}'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
