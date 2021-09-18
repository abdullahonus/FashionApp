import 'package:fashion_app_c4/constant_app/constants_app.dart';
import 'package:fashion_app_c4/pages/details_page_c4.dart';
import 'package:flutter/material.dart';

class InterfaceScreen extends StatefulWidget {
  const InterfaceScreen({Key? key}) : super(key: key);

  @override
  _InterfaceScreenState createState() => _InterfaceScreenState();
}

class _InterfaceScreenState extends State<InterfaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 10,
      child: Container(
        height: 700,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            firstRow(context),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "This offical website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommend to friends",
              style: TextStyle(
                  fontSize: 13, fontFamily: "Montserrat", color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => Details(
                                imgPath: "assets/modelgrid1.jpeg",
                              )),
                    );
                  },
                  child: Hero(
                    tag: "assets/modelgrid1.jpeg",
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 70) / 2,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage("assets/modelgrid1.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Details(
                                    imgPath: "assets/modelgrid2.jpeg",
                                  )),
                        );
                      },
                      child: Hero(
                        tag: "assets/modelgrid2.jpeg",
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 100) / 2,
                          height: 95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                  image: AssetImage("assets/modelgrid2.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Details(
                                    imgPath: "assets/modelgrid3.jpeg",
                                  )),
                        );
                      },
                      child: Hero(
                        tag: "assets/modelgrid3.jpeg",
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 100) / 2,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage("assets/modelgrid3.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.withOpacity(0.2)),
                  child: const Center(
                    child: Text(
                      "#Louis vuitton",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Colors.brown),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.withOpacity(0.2)),
                  child: const Center(
                    child: Text(
                      "#Chloe",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Colors.brown),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              height: 25,
              color: ContsApp.withpacityBrown,
              thickness: 2,
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Icon(
                  Icons.reply,
                  color: ContsApp.withpacityBrown,
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  "1.7k",
                  style: TextStyle(color: Colors.grey[400]),
                ),
                const SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.comment,
                  color: ContsApp.withpacityBrown,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "325",
                  style: TextStyle(color: Colors.grey[400]),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 20,
                  width: (MediaQuery.of(context).size.width - 90) / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "3.7k",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            secondRow(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "This offical website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommend to friends",
              style: TextStyle(
                  fontSize: 13, fontFamily: "Montserrat", color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Row firstRow(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  image: AssetImage("assets/model8.jpg"), fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ContsApp.followProfileText,
              SizedBox(
                height: 5,
              ),
              ContsApp.followingHintText
            ],
          ),
        ),
        const SizedBox(
          width: 49,
        ),
        const Icon(
          Icons.more_vert,
          color: Colors.grey,
        )
      ],
    );
  }

  secondRow() {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  image: AssetImage("assets/model7.jpg"), fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ContsApp.followProfileText2,
              SizedBox(
                height: 5,
              ),
              ContsApp.followingHintText
            ],
          ),
        ),
        const SizedBox(
          width: 49,
        ),
        const Icon(
          Icons.more_vert,
          color: Colors.grey,
        ),
      ],
    );
  }
}
