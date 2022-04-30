import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projectfainal/utility/Menu.dart';

void main() {
  runApp(MyLogin());

}

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _userName = TextEditingController();
  TextEditingController _passWord = TextEditingController();
  String text = "";

  void _clickMe() {
    setState(() {
      if (_userName.text == " " && _passWord.text == " ") {
        text = "รหัสผ่านถูกต้อง";
      } else {
        text = "รหัสผ่านไม่ถูกต้อง";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: HexColor("#8C0005"),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children:[
            Image.asset('images/logormuti.png',width: 80,height: 50,), Text('มหาวิทยาลัยเทคโนโลยีราชมงคลอีสาน วิทยาเขตขอนแก่น'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 15
              ),
              constraints:
              const BoxConstraints(),
              color: HexColor("#FD5C07"),
              child : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text('คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมคอมพิวเตอร์',
                          style: TextStyle(
                              color: Colors.white
                          )
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text('Faculty of Engineering Computer Engineering',
                          style: TextStyle(
                              color: Colors.white
                          )
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 35,),
            Container(
              height: 35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Image.asset('images/kia.png',
                    width: 100,height: 100,),
                  SizedBox(
                    height: 25,
                  ),
                  Text("เข้าสู่ระบบ",
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 550,
              child: Column(
                children: [
                  SizedBox(height: 165,),
                  username(),
                  SizedBox(height: 25,),
                  password(),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      TextButton(onPressed: () => null, child: Text("ลืมรหัสผ่าน"),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      RaisedButton(
                          child: Text("Log in"),
                          onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>Menu())),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget username(){
    return
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: new Border.all(width:1.2, color: HexColor("#FD5C07")),
          borderRadius: BorderRadius.circular(25.0),
        ),
        height: 60,
        child: TextField(
          controller: _userName,
          decoration: const InputDecoration(
            border: InputBorder.none,
            // border: OutlineInputBorder(
            //   borderSide: BorderSide(
            //   )
            // ),
            contentPadding: EdgeInsets.only(top: 15.0),
            hintText: "Username :",
          ),
        ),
      );
  }

  Widget password(){
    return Column(
      children: [
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: new Border.all(width:1.2, color: HexColor("#FD5C07")),
            borderRadius: BorderRadius.circular(25.0),
          ),
          height: 60,
          child: TextField(
            controller: _passWord,
            decoration: InputDecoration(
              border: InputBorder.none,
              // border: OutlineInputBorder(
              //     borderSide: BorderSide(
              //       color: HexColor("#FD5C07"),width: 2.0,
              //     )
              // ),
              contentPadding: EdgeInsets.only(top: 15.0),
              hintText: "Password :",
            ),
          ),
        )
      ],
    );
  }
}
