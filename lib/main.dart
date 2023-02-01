import 'package:flutter/material.dart';
import 'package:stupid_website/widget/button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PTC',
      theme: ThemeData.light(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 214, 222),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 1, 22, 39),
        elevation: 0,
        automaticallyImplyLeading: false,
        leadingWidth: 500,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 30),
            Image.asset("assets/logo.png", height: 60, width: 60, fit: BoxFit.contain),
            const SizedBox(width: 20),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                text: "วิทยาลัยเทคนิคภูเก็ต",
                children: [
                  TextSpan(
                    style: TextStyle(color: Color.fromARGB(255, 255, 175, 0), fontWeight: FontWeight.w600),
                    text: "\nPhuket Technical College",
                  ),
                ]
              )
            )
          ],
        ),
        actions: [
          Button(
            onClick: () {},
            color: Colors.white,
            size: const Size(200, 0),
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/google_logo.png", height: 40, width: 40, fit: BoxFit.contain),
                const Text("ลงชื่อเข้าสู่ระบบ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black))
              ],
            ),
          ),
        ],
      ),

      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset("assets/banner.png", height: 450, width: 1920, fit: BoxFit.fitHeight,),
              Positioned(
                top: 118,
                left: 30,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/logo.png", height: 120, width: 120, fit: BoxFit.contain),
                    const SizedBox(width: 16),
                    const Text("ฝ่ายวิชาการ\nงานหลักสูตรการเรียนการสอน", style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.w700))
                  ],
                )
              ),
              Positioned(
                bottom: 24,
                left: 40,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 175, 0),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: const Icon(Icons.call, color: Colors.black, size: 30),
                    ),
                    const SizedBox(width: 16),
                    const Text("โทรศัพท์ 076-211343,076-221679 โทรสาร 076-212729 Test", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700))
                  ],
                )
              )
            ],
          ),

          Container(
            margin: const EdgeInsets.only(top: 400),
            alignment: Alignment.center,
            color: const Color.fromARGB(255, 18, 24, 27),
            height: 192,
            width: double.maxFinite,
            child: const Text(
              "ที่ตั้ง : วิทยาลัยเทคนิคภูเก็ต ถนนเยาวราช อ.เมือง จ.ภูเก็ต รหัสไปรษณีย์ 83000\nโทรศัพท์ 076-211343, 076-221679 โทรสาร 076-212729",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Colors.white
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
            ),
          )
        ],
      ),
    );
  }
}
