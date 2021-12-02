import 'package:flutter/material.dart';
import 'package:hp_quizz/houses.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harry Potter Houses Quizz'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/hogwarts4.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Take the Quizz to know your house",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 5),
                    child: Image.asset("assets/images/choixpeau2_removebg.png",
                        width: MediaQuery.of(context).size.width / 2),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 2.2),
                      width: MediaQuery.of(context).size.width / 2,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext ctx) {
                              return Houses();
                            }));
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Discover",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
