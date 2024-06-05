import 'package:flutter/material.dart';

class Cardo extends StatelessWidget {
  Cardo({super.key,this.result, required this.image, required this.title, required this.calorie, required this.price, required this.subTitle, required this.imgHeight, required this.imgWidth});
  late String? result;
  final String image;
  final double imgHeight;
  final double imgWidth;
  final String title;
  final String subTitle;
  final String calorie;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15,),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Image.asset(image, height: imgHeight, width: imgWidth,),
          const SizedBox(height: 10,),
          Text(title,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          const SizedBox(height: 3,),
          Text(subTitle, style: const TextStyle(color: Colors.black38, fontSize: 8),),
          const SizedBox(height: 3,),
          Text(calorie,style: const TextStyle(color: Colors.red, fontSize: 10)),
          const SizedBox(height: 3,),
          Text(price,style: const TextStyle(color: Colors.black, fontSize: 15)),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}


