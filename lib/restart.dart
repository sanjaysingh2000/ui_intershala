import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Restart extends StatelessWidget {
  const Restart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.red,
          ),
          Flexible(
            child: MasonryGridView.builder(
                gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(padding: EdgeInsets.all(20),child: Container(

                    child: Image.asset('assets/images/img${index + 1}.png'),
                  ),
                  );
                },),
          )
        ],
      ),
    );
  }
}
