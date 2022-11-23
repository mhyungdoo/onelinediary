import 'package:flutter/material.dart';

import '../page/input_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('One Line'),
      //   centerTitle: true,
      //   elevation: 0.0,
      // ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/oneline.PNG'),
              ),
              accountName: Text('One Line'),
              accountEmail: Text('stard@stard.com'),
              onDetailsPressed: () {},
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    // bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
          ],
        ),
      ),

        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('오늘의 한줄', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(
                height: 40,
              ),
              FloatingActionButton(
                  child: Icon(Icons.add),
                  backgroundColor: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return InputPage();
                      }),
                    );
                  }),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text('Limited Text,', style: TextStyle(fontSize: 20)),
              ),
              Center(
                child: Text('절제되고 정제된 표현의 미학', style: TextStyle(fontSize: 20)),
              ),
              Center(
                child: Text('오직 하루에 한줄', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
    );
  }
}
