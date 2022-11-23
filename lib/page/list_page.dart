import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('One Line Diary'),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('오늘의 한줄', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(
                height: 20,
              ),

            ],
          ),
        ));
  }
}
