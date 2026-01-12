import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),

      //defualt page
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomepage(),

        '/second': (context) => SecondPage(),
      },
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.red),
              padding: EdgeInsets.only(bottom: 50),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.amberAccent[400],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://th-thumbnailer.cdn-si-edu.com/a7tVriSSe1eJDFFN1SQYP8XISsA=/800x549/filters:no_upscale():focal(400x274:401x275)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer_public/37/ab/37ab35c9-68b2-4973-b61d-43350740c12a/red_jungle_fowl.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text("ไก่กระดาษ"),
                    const Text("Kaikadard@e-tech.ac.th"),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text("ข้อมูลส่วนตัว", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 50),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.phone,
                          size: 34,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("เบอร์"), Text("099 222 6969")],
                      ),
                    ],
                  ),
                  SizedBox(height: 20, width: 10),
                  Row(
                    children: [
                      SizedBox(height: 10, width: 50),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.cake,
                          size: 34,
                          color: Colors.redAccent,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("วันเกิด"), Text("26 กันยายน 2568")],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(height: 10, width: 50),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.pin_drop,
                          size: 34,
                          color: Colors.redAccent,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("ที่อยู่"), Text("ชลบุรี")],
                      ),
                    ],
                  ),
                  SizedBox(height: 20, width: 10),
                  Row(
                    children: [
                      SizedBox(height: 10, width: 50),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.school,
                          size: 34,
                          color: Colors.purple,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("การศึกษา"),
                          Text("วิทยาลัยเทคโนโลยีภาคตะวันออก(อีเทค)"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      minimumSize: Size(370, 40),
                    ),
                    child: Text("ไปยังหน้า 2"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2ce),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://cdn.britannica.com/18/137318-050-29F7072E/rooster-Rhode-Island-Red-roosters-chicken-domestication.jpg",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "กำลังติตาม",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 3,
                      height: 40,
                      color: Color(0xffd9c999),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "9999999",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "ผู้ติดตาม",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 3,
                      height: 40,
                      color: Color(0xffd9c999),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "200K",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "ถูกใจและบันทึก",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),//รูปด้านบน รายละเอียด
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Teerapat Sungtong",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                    ),
                  ],
                ),//ชื่อ
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "dew kub",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black54,
                    ),
                  ],
                ),// ลิ้งค์
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff99ae83),
                          foregroundColor: Color(0xfff2fac0),
                          fixedSize: Size(250, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "ติมตาม",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.share,
                        size: 24,
                      ),
                    ),
                  ],
                ),//ปุ่ม
                SizedBox(
                  height: 20,
                ),
                GridView.count(
                  shrinkWrap: true, //ใหญ่เท่าที่มี
                  physics: NeverScrollableScrollPhysics(), // ปิดการ scroll ของ grid (ให้ไป scroll ที่ตัวแม่แทน)
                  crossAxisCount: 2,          // จำนวนคอลัมน์ (2 ช่อง)
                  crossAxisSpacing: 10,       // ระยะห่างระหว่างรูปซ้าย-ขวา
                  mainAxisSpacing: 10,        // ระยะห่างระหว่างรูปบน-ล่าง
                  children: [
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMG7_kX2QLix9UaGgw4mYWHtVmu_0h2oTpTg&s",
                        fit: BoxFit.cover
                    ),
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS5jf5awSpbHgq8CwT704YbnkrNs9kG4n5bA&s",
                        fit: BoxFit.cover
                    ),
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhA4N-Gv1IbcVQgXYMt893NcRMa2DFaqdlw&s",
                        fit: BoxFit.cover
                    ),
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAOs1NE7h2NnQ4Ku0tKjA9ooI0Hv_RnFNprQ&s",
                        fit: BoxFit.cover
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
