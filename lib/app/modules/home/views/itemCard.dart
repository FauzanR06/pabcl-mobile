import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/app/modules/home/views/description.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.judul,required this.country, required this.popularity, required this.releaseDate, required this.image}) : super(key: key);
  final String judul;
  // final String genre;
  final String popularity;
  final String releaseDate;
  final String image;
  // final String overview; 
  final String country; 

  @override
  Widget build(BuildContext context) {
    return Container(
      // onTap : (){
      //   Navigator.push(context, MaterialPageRoute(builder: ((context) => Description( ))));
      // },
      child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: double.infinity,
            height: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 137, 158, 214),
            ),
            child: Row(
              children: [
                Container(child: 
                Image.network(image,), 
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    child: Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            judul,
                          style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text("Popularity   :" + popularity,
                          style: TextStyle(
                            fontSize: 16),
                            ),SizedBox(height: 5),
                    
                            Text("Release Date :" + releaseDate,
                          style: TextStyle(
                            fontSize: 16),
                            ),SizedBox(height: 5),
                    
                            Text(
                            "Language :" + country,
                          style: TextStyle(
                            fontSize: 16),
                            ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}