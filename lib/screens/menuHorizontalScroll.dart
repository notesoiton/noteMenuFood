import 'package:flutter/material.dart';

void main() => runApp(ShowMenu());

class ShowMenu extends StatelessWidget {
  Container myArticles(String imageVal, String heading, String subHeading) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageVal),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu',
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "เมนู - แนะนำ ร้าน นวพร ค้าข้าว",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
          Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 260,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              myArticles("http://funmusic.name/menu/menu01.jpg",
                  "ไข่ปลาเรียวเซียว", "300บาท"),
              myArticles("http://funmusic.name/menu/menu02.jpg", "ส้มตำปูม้า",
                  "180บาท"),
              myArticles("http://funmusic.name/menu/menu03.jpg",
                  "แกงส้มไข่ปลาเรียวเซียว", "380บาท"),
              myArticles("http://funmusic.name/menu/menu04.jpg", "แกงส้มกุ้งสด",
                  "280บาท"),
              myArticles("http://funmusic.name/menu/menu05.jpg", "หอยแครงลวก",
                  "120บาท"),
              myArticles("http://funmusic.name/menu/menu06.jpg", "แกงไหลบัว",
                  "180บาท"),
              myArticles("http://funmusic.name/menu/menu07.jpg",
                  "ตำซั่วหอยแครง", "140บาท"),
              myArticles("http://funmusic.name/menu/menu08.jpg", "คอหมูย่าง",
                  "100บาท"),
              myArticles("http://funmusic.name/menu/menu09.jpg",
                  "ต้มแซ่บซุปเปอร์", "270บาท"),
              myArticles("http://funmusic.name/menu/menu10.jpg",
                  "สามชั้นทอดน้ำปลา", "140บาท"),
            ],
          ),
        ),//First
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              myArticles("http://funmusic.name/menu/menu01.jpg",
                  "ไข่ปลาเรียวเซียว", "300บาท"),
              myArticles("http://funmusic.name/menu/menu02.jpg", "ส้มตำปูม้า",
                  "180บาท"),
              myArticles("http://funmusic.name/menu/menu03.jpg",
                  "แกงส้มไข่ปลาเรียวเซียว", "380บาท"),
              myArticles("http://funmusic.name/menu/menu04.jpg", "แกงส้มกุ้งสด",
                  "280บาท"),
              myArticles("http://funmusic.name/menu/menu05.jpg", "หอยแครงลวก",
                  "120บาท"),
              myArticles("http://funmusic.name/menu/menu06.jpg", "แกงไหลบัว",
                  "180บาท"),
              myArticles("http://funmusic.name/menu/menu07.jpg",
                  "ตำซั่วหอยแครง", "140บาท"),
              myArticles("http://funmusic.name/menu/menu08.jpg", "คอหมูย่าง",
                  "100บาท"),
              myArticles("http://funmusic.name/menu/menu09.jpg",
                  "ต้มแซ่บซุปเปอร์", "270บาท"),
              myArticles("http://funmusic.name/menu/menu10.jpg",
                  "สามชั้นทอดน้ำปลา", "140บาท"),
            ],
          ),
        ),//second
Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 260,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              myArticles("http://funmusic.name/menu/menu01.jpg",
                  "ไข่ปลาเรียวเซียว", "300บาท"),
              myArticles("http://funmusic.name/menu/menu02.jpg", "ส้มตำปูม้า",
                  "180บาท"),
              myArticles("http://funmusic.name/menu/menu03.jpg",
                  "แกงส้มไข่ปลาเรียวเซียว", "380บาท"),
              myArticles("http://funmusic.name/menu/menu04.jpg", "แกงส้มกุ้งสด",
                  "280บาท"),
              myArticles("http://funmusic.name/menu/menu05.jpg", "หอยแครงลวก",
                  "120บาท"),
              myArticles("http://funmusic.name/menu/menu06.jpg", "แกงไหลบัว",
                  "180บาท"),
              myArticles("http://funmusic.name/menu/menu07.jpg",
                  "ตำซั่วหอยแครง", "140บาท"),
              myArticles("http://funmusic.name/menu/menu08.jpg", "คอหมูย่าง",
                  "100บาท"),
              myArticles("http://funmusic.name/menu/menu09.jpg",
                  "ต้มแซ่บซุปเปอร์", "270บาท"),
              myArticles("http://funmusic.name/menu/menu10.jpg",
                  "สามชั้นทอดน้ำปลา", "140บาท"),
            ],
          ),
        ),//thrid
Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              myArticles("http://funmusic.name/menu/menu01.jpg",
                  "ไข่ปลาเรียวเซียว", "300บาท"),
              myArticles("http://funmusic.name/menu/menu02.jpg", "ส้มตำปูม้า",
                  "180บาท"),
              myArticles("http://funmusic.name/menu/menu03.jpg",
                  "แกงส้มไข่ปลาเรียวเซียว", "380บาท"),
              myArticles("http://funmusic.name/menu/menu04.jpg", "แกงส้มกุ้งสด",
                  "280บาท"),
              myArticles("http://funmusic.name/menu/menu05.jpg", "หอยแครงลวก",
                  "120บาท"),
              myArticles("http://funmusic.name/menu/menu06.jpg", "แกงไหลบัว",
                  "180บาท"),
              myArticles("http://funmusic.name/menu/menu07.jpg",
                  "ตำซั่วหอยแครง", "140บาท"),
              myArticles("http://funmusic.name/menu/menu08.jpg", "คอหมูย่าง",
                  "100บาท"),
              myArticles("http://funmusic.name/menu/menu09.jpg",
                  "ต้มแซ่บซุปเปอร์", "270บาท"),
              myArticles("http://funmusic.name/menu/menu10.jpg",
                  "สามชั้นทอดน้ำปลา", "140บาท"),
            ],
          ),
        ),//fourth
        ],)
      ),
    );
  }
}
