import 'package:flutter/material.dart';

import '../animalItem.dart';
import '../sub/firstPage.dart';
import '../sub/mainPage.dart';
import '../sub/secondPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  List<Animal> animalList = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);

    animalList.add(Animal(animalName: "벌", kind: "곤충",
        imagePath: "repo/images/bee.png"));
    animalList.add(Animal(animalName: "고양이", kind: "포유류",
        imagePath: "repo/images/cat.png"));
    animalList.add(Animal(animalName: "젖소", kind: "포유류",
        imagePath: "repo/images/cow.png"));
    animalList.add(Animal(animalName: "강아지", kind: "포유류",
        imagePath: "repo/images/dog.png"));
    animalList.add(Animal(animalName: "여우", kind: "포유류",
        imagePath: "repo/images/fox.png"));
    animalList.add(Animal(animalName: "원숭이", kind: "영장류",
        imagePath: "repo/images/monkey.png"));
    animalList.add(Animal(animalName: "돼지", kind: "포유류",
        imagePath: "repo/images/pig.png"));
    animalList.add(Animal(animalName: "늑대", kind: "포유류",
        imagePath: "repo/images/wolf.png"));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('One Line'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: TabBarView(
          children: <Widget>[MainPage(), FirstApp(list: animalList,), SecondApp()],
          controller: controller,
        ),
        bottomNavigationBar: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.home, color: Colors.blue),
            ),
            Tab(
              icon: Icon(Icons.looks_one, color: Colors.blue),
            ),
            Tab(
              icon: Icon(Icons.looks_two, color: Colors.blue),
            )
          ],
          controller: controller,
        ));
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}
