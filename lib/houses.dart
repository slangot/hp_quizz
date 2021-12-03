import 'package:flutter/material.dart';
import 'dart:math';
import 'package:hp_quizz/houses_data.dart';

class Houses extends StatefulWidget {
  const Houses({Key? key}) : super(key: key);

  @override
  _HousesState createState() => _HousesState();
}

class _HousesState extends State<Houses> {
  List<House> allHouses = Datas().listHouses;
  int choiceHouse = getHouseNumber();

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text('Harry Potter Houses Quizz'),
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                getBanner(allHouses[choiceHouse].color1,
                    allHouses[choiceHouse].color2, maxWidth),
                SizedBox(height: MediaQuery.of(context).size.height / 12),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        allHouses[choiceHouse].imagePath,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        allHouses[choiceHouse].name,
                        style: TextStyle(
                            color: allHouses[choiceHouse].color1,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  color: Colors.black.withOpacity(0.5),
                                  offset: Offset(3, 3),
                                  blurRadius: 15),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}

dynamic getHouseNumber() {
  Random random = new Random();
  int randomNumber = random.nextInt(4);
  return randomNumber;
}

Container getBanner(color1, color2, size) {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.black,
        offset: Offset(0.0, 1.0),
        blurRadius: 5.0,
        spreadRadius: 0.0,
      )
    ]),
    child: Row(mainAxisSize: MainAxisSize.max, children: [
      Container(
        width: size / 9,
        height: 50,
        decoration: BoxDecoration(color: color1),
      ),
      Container(
        width: size / 9,
        height: 50,
        decoration: BoxDecoration(color: color2),
      ),
      Container(
        width: size / 9,
        height: 50,
        decoration: BoxDecoration(color: color1),
      ),
      Container(
        width: size / 9,
        height: 50,
        decoration: BoxDecoration(color: color2),
      ),
      Container(
        width: size / 9,
        height: 50,
        decoration: BoxDecoration(color: color1),
      ),
      Container(
        width: size / 9,
        height: 50,
        decoration: BoxDecoration(color: color2),
      ),
      Container(
        width: size / 9,
        height: 50,
        decoration: BoxDecoration(color: color1),
      ),
      Container(
        width: size / 9,
        height: 50,
        decoration: BoxDecoration(color: color2),
      ),
      Container(
        width: size / 9,
        height: 50,
        decoration: BoxDecoration(color: color1),
      ),
    ]),
  );
}
