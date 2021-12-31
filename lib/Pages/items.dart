import 'package:dg_supermart/Constants/colors.dart';
import 'package:dg_supermart/Models/product.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ProductModel> products = [];

    products.add(ProductModel(
        "Orange", "121", "assets/images/orange.png", "15", "1 KG"));
    products.add(ProductModel(
        "Pineapple", "122", "assets/images/pineapple.png", "12", "1 KG"));
    products.add(ProductModel(
        "Watermelon", "100", "assets/images/watermelon.png", "18", "1 KG"));
    products.add(
        ProductModel("Kivi", "110", "assets/images/kivi.png", "12", "1 KG"));
    products.add(
        ProductModel("Kivi", "120", "assets/images/kivi.png", "10", "1 KG"));
    return Scaffold(
      backgroundColor: greyColor,
      drawer: Drawer(),
      // backgroundColor: Color(0xFFc8c8c8),
      appBar: AppBar(
        title: "Fruits".text.make(),
        actions: [Icon(Icons.shopping_basket).pOnly(right: 10)],
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/logo.png').centered(),
          ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: Card(
                  elevation: 5,
                  shadowColor: blackColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    height: 185,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: appColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: "${products[index].discount} % OFF"
                                    .text
                                    .black
                                    .bold
                                    .xl
                                    .makeCentered()
                                    .px12()
                                    .py(4),
                              ),
                            ),
                            5.heightBox,
                            Image.asset(
                              products[index].imgUrl,
                              height: 85,
                              width: 85,
                            ),
                            10.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    // widget.decreaseCount(widget.index);
                                  },
                                  child: Container(
                                      child: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      height: 30,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          // borderRadius: BorderRadius.only(
                                          //     topLeft: Radius.circular(5),
                                          //     bottomLeft: Radius.circular(5)),
                                          color: appColor)),
                                ),
                                10.widthBox,
                                Container(
                                    child: "1".text.xl2.bold.make().centered(),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    )),
                                10.widthBox,
                                InkWell(
                                  onTap: () {
                                    // widget.increaseCount(widget.index);
                                  },
                                  child: Container(
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      height: 30,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: appColor)),
                                ),
                              ],
                            ).pOnly(left: 7),
                          ],
                        ),
                        10.widthBox,
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [

                        //   ],
                        // ).w24(context),
                        // 10.widthBox,
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                "Rs. ${products[index].price}"
                                    .text
                                    .xl
                                    .bold
                                    .color(redColor)
                                    .make(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    products[index]
                                        .name
                                        .text
                                        .color(greenColor)
                                        .bold
                                        .xl2
                                        .make(),
                                    15.heightBox,
                                    products[index].measure.text.make(),
                                  ],
                                ).objectTopLeft(),
                                Container(
                                  width: 130,
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      color: greyColor,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Icon(Icons.shopping_basket),
                                      5.widthBox,
                                      "Add To Cart".text.make(),
                                    ],
                                  ),
                                )
                              ],
                            ).objectTopRight(),
                          ),
                        )
                      ],
                    ),
                  ),
                ).py(4),
              );
            },
          )
        ],
      ),
    );
  }
}
