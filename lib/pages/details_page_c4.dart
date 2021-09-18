// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  var imgPath;

  Details({Key? key, required this.imgPath}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 5,
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: const DecorationImage(
                                    image: AssetImage("assets/dress.jpg"),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "LAMİNATED",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Louis Vuitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  color: Colors.grey.withOpacity(0.6)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width - 160,
                              child: Text(
                                "Tek düğme V yaka askılı uzun kollu bel dikişli kadın elbisesi",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Colors.grey.withOpacity(0.6)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 3,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, bottom: 5, top: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$6500",
                            style: TextStyle(
                                fontFamily: "Montserrat", fontSize: 22),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: FloatingActionButton(
                              mini: true,
                              onPressed: () {},
                              child: const Icon(Icons.arrow_forward_ios),
                              backgroundColor: Colors.brown,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2 - 30,
              left: 100,
              width: 110,
              child: Container(
                height: 25,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Center(
                      child: Text(
                        'LAMİNATED',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.arrow_right,color: Colors.black,)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
