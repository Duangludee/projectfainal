import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
var i;
  List Mainmenu = [
    {
      'name':'RE01 : คำร้องทั่วไป'
    },
    {
      'name':'RE02 : คำร้องขอลงทะเบียนต่ำกว่า/เกินกว่าหน่วยกิตกำหนด'
    },
    {
      'name':'RE03 : คำร้องขอเปลี่ยนกลุ่มเรียน'
    },
    {
      'name':'RE04 : คำร้องขอชำระเงินล่าช้า'
    },
    {
      'name':'RE05 : คำร้องขอลงทะเบียนเรียนเทียบรายวิชา'
    },
    {
      'name':'RE06 : คำร้องขอเพิ่มที่นั่ง'
    },
    {
      'name':'RE07 : คำร้องขอเปิดรายวิชานอกแผนการเรียน'
    },
    {
      'name':'RE08 :  คำร้องขอสอบใหม่/ขอสอบพิเศษ'
    },
    {
      'name':'RE09 : คำร้องขอผ่อนผัน ค่าบำรุงการศึกษาค่าลงทะเบียนและค่าธรรมเนียม'
    },
    {
      'name':'RE10 : คำร้องขอลาพักการศึกษา/รักษาสถานภาพการเป็นนักศึกษา'
    },
    {
      'name':'RE11 : คำร้องขอคืนสภาพการเป็นนักศึกษา'
    },
    {
      'name':'RE12 : คำร้องขอกลับเข้าศึกษา'
    },
    {
      'name':'RE13 : คำร้องขอเปลี่ยนแปลงข้อมูลในทะเบียนประวัติ'
    },
    {
      'name':'RE14 : คำร้องขอลาออกจากการเป็นนักศึกษา'
    },
    {
      'name':'RE15 : คำร้องขอหนังสือรับรองและเอกสารสำคัญทางการศึกษา'
    },
    {
      'name':'RE16 : คำร้องขอใบรับรองความประพฤติ'
    },
    {
      'name':'RE17 : คำร้องขอสำเร็จการศึกษาล่าช้า'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: HexColor("#8C0005"),
        title: const Text('มหาวิทยาลัยเทคโนโลยีราชมงคลอีสาน วิทยาเขตขอนแก่น'),
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
      Container(
      )
  ]
        ),
    )
    );
  }
}
