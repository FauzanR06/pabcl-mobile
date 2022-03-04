import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/app/modules/home/views/itemCard.dart';
class Description extends StatelessWidget {
  const Description({Key? key,  required this.image })  : super(key: key);
final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: 
                    Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ])
      ),
    );
  }
}