import 'package:flutter/material.dart';

class DogList extends StatefulWidget {
  const DogList({Key? key}) : super(key: key);

  @override
  State<DogList> createState() => _DogListState();
}

class _DogListState extends State<DogList> {
  int amount = 2;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: amount,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black)),
            height: 100,
            child: Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.lightBlue,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        AssetImage('lib/assets/doggo.png')))),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Name:"),
                            Text("Breed:"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('name'),
                            Text('petSpecies'),
                          ],
                        ),
                        Text(
                          'Age: $age',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
