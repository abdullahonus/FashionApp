// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fashion_app_c4/constant_app/constants_app.dart';

import 'interface_screen_c4.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          ContsApp.titleText,
          style: ContsApp.titleStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          // Todo: up side profilles
          Container(
            padding: const EdgeInsets.all(5),
            height: 105,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listElement("assets/model1.jpeg", "assets/chanellogo.jpg"),
                listElement1("assets/model8.jpg", "assets/chloelogo.png"),
                listElement("assets/model4.jpeg", "assets/dress.jpg"),
                listElement1("assets/model7.jpg", "assets/louisvuitton.jpg"),
                listElement("assets/model5.jpg", "assets/dress.jpg"),
                listElement("assets/model6.jpg", "assets/chanellogo.jpg"),
                listElement("assets/model3.jpeg", "assets/chanellogo.jpg"),
                listElement("assets/model2.jpeg", "assets/chloelogo.png"),
                listElement("assets/model3.jpeg", "assets/dress.jpg"),
                listElement("assets/model1.jpeg", "assets/louisvuitton.jpg"),
                listElement("assets/model7.jpg", "assets/dress.jpg"),
                listElement("assets/model8.jpg", "assets/chloelogo.png"),
              ],
            ),
          ),
          // Todo interface screen
          const Padding(
            padding: EdgeInsets.all(20),
            child: InterfaceScreen(),
          ),
        ],
      ),
    );
  }

  listElement(String imagePath, String logoPath) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(right: 80)),
        Stack(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              left: 35,
              top: 36,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 20,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.brown[800],
              borderRadius: BorderRadius.circular(50)),
          child: const Center(child: ContsApp.followText),
        ),
      ],
    );
  }

  listElement1(String imagePath, String logoPath) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(right: 80)),
        Stack(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              left: 35,
              top: 36,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(50),
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 20,
            width: 60,
            child: const Center(child: Icon(Icons.done_sharp)),
          ),
        ),
      ],
    );
  }
}
