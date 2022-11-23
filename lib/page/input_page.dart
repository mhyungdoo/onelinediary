import 'package:flutter/material.dart';
import 'package:onelinediary/page/list_page.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Input One Line'),
         // backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('한줄 쓰기', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                  maxLength: 300,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: '입력해주세요'),
                  onChanged: (String str) {
                    setState(() {});
                  },
                  cursorWidth: 10,
                ),
                width: 300, //TextField Size는 Container로 감싸서 설정
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListPage()),
                  );
                },
              ),



            ],
          ),
        ));
  }

  void setState(Null Function() param0) {}
}
