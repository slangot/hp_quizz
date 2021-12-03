import 'package:flutter/material.dart';

class House {
  String name;
  String imagePath;
  Color color1;
  Color color2;

  House({
    required this.name,
    required this.imagePath,
    required this.color1,
    required this.color2,
  });
}

class Datas {
  List<House> listHouses = [
    House(
        name: "Gryffindor",
        imagePath: "assets/images/Gryffindor.jpg",
        color1: Colors.red,
        color2: Colors.amber),
    House(
        name: "Ravenclaw",
        imagePath: "assets/images/RavenclawCrest.jpg",
        color1: Colors.blue,
        color2: Colors.black),
    House(
        name: "Hufflepuff",
        imagePath: "assets/images/Hufflepuff.jpg",
        color1: Colors.amber,
        color2: Colors.black),
    House(
        name: "Slytherin",
        imagePath: "assets/images/Slytherin.jpg",
        color1: Colors.green,
        color2: Colors.black),
  ];
}
