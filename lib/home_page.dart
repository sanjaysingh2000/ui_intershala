import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_intershala/cardo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: Colors.black54,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(vertical: height * 0.04),
                height: height,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: SingleChildScrollView(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                          ),
                          const Text(
                            'Search Food',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: height * 0.06,
                            width: width * 0.12,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset('assets/images/img_5.png'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: height * 0.07,
                        margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.02),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(0.0),
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      size: 18,
                                    ),
                                    hintText: 'Spice Food',
                                    hintStyle: const TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 14),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(25))),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              height: 70,width: 60,child: const Icon(Icons.settings),)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text('Found \n80 results', textAlign: TextAlign.start,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
                              Cardo(
                                image: 'assets/images/img.png',
                                title: 'Oni Sandwich',
                                calorie: '🔥 69 Calories',
                                price: '\$6.72',
                                subTitle: 'Spicy chicken sandwich',
                                imgHeight: 100,
                                imgWidth: 100,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Cardo(
                                image: 'assets/images/img_2.png',
                                title: 'Egg Pasta',
                                calorie: '🔥 78 Calories',
                                price: '\$9.80',
                                subTitle: 'Spicy chicken pasta',
                                imgHeight: 100,
                                imgWidth: 100,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          Column(children: [
                            Cardo(
                              image: 'assets/images/img_1.png',
                              title: 'Dan Noodles',
                              calorie: '🔥 120 Calories',
                              price: "\$8.86",
                              subTitle: 'Spicy fruiti mixed',
                              imgHeight: 100,
                              imgWidth: 100,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Cardo(
                              image: 'assets/images/img_2.png',
                              title: 'Egg Pasta',
                              calorie: '🔥 78 Calories',
                              price: '\$9.80',
                              subTitle: 'Spicy chicken pasta',
                              imgHeight: 100,
                              imgWidth: 100,
                            ),
                            SizedBox(height: 20,),
                            Cardo(
                              image: 'assets/images/img_4.png',
                              title: 'Chicken Dimsum',
                              calorie: '🔥 65 Calories',
                              price: '\$8.86',
                              subTitle: 'Spicy Dimsum',
                              imgHeight: 100,
                              imgWidth: 100,
                            ),
                          ],)


                        ],
                      ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
