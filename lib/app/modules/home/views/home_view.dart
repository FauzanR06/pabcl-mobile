import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie/app/modules/home/views/itemCard.dart';
import 'package:movie/app/service/movie_service.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // final data = MovieService();
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Catalog'),
      ),
      body: controller.obx(
        (data) => ListView.builder(
          itemCount: data!.length, 
          itemBuilder: (context, index) => ItemCard(
            judul: data[index]['title'],
            popularity: data[index]['popularity'].toString(),
            releaseDate: data[index]['release_date'].toString(),
            country: data[index]['original_language'].toString(),
            image: "https://image.tmdb.org/t/p/w342/" + data[index]['poster_path'],
          )
          ),
      ),
    );
  }
}
