import 'package:flutter/material.dart';
import 'package:stupid_website/home_page.dart';
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
      home: const Homepage(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTools = 0;
  List _hover = [false, false, false, false];
  List _bannerText = ["หน้าแรก", "โครงสร้างองค์กร", "ข้อมูลการใช้งาน", "สรุปสถิติส่งแผนการสอน"];
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
        actions: List.generate(_hover.length, (index) => MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) => setState(() => _hover[index] = true),
          onExit: (event) => setState(() => _hover[index] = false),
          child: GestureDetector(
            onTap: () {
              if (_currentTools == index) {
                return ;
              }
              setState(() => _currentTools = index);
            },
            child: Align(alignment: Alignment.center, child: Text(_bannerText[index] + "    ", style: TextStyle(color: _currentTools == index ? const Color.fromARGB(255, 255, 175, 0) : Colors.white, fontWeight: FontWeight.w600, fontSize: 20))),
          ),
        )),
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
                    const Text("โทรศัพท์ 076-211343,076-221679 โทรสาร 076-212729", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700))
                  ],
                )
              )
            ],
          ),
          ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          
          if (_currentTools == 0) ... [
            Padding(
              padding: const EdgeInsets.only(top: 71),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 340),
                    child: Container(
                      height: 595,
                      width: 546,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 164, 188, 205),
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 28),
                              child: Container(
                                height: 72,
                                width: 492,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 175, 0),
                                  borderRadius: BorderRadius.circular(50.0)
                                ),
                                child: const Center(child: Text("บันทึกหลังการสอน",style: TextStyle(color: Color.fromARGB(255, 63, 63, 63), fontSize: 40, fontWeight: FontWeight.w700))),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Container(
                              height: 437,
                              width: 437,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/after_teaching.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(50.0)
                              ),
                              child: null
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 156),
                    child: Container(
                      height: 595,
                      width: 546,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 164, 188, 205),
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 28),
                            child: Container(
                              height: 72,
                              width: 492,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 175, 0),
                                borderRadius: BorderRadius.circular(50.0)
                              ),
                              child: const Center(child: Text("แผนการสอน",style: TextStyle(color: Color.fromARGB(255, 63, 63, 63), fontSize: 40, fontWeight: FontWeight.w700))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Container(
                              height: 437,
                              width: 437,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/plan.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(50.0)
                              ),
                              child: null
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
          ] else if (_currentTools == 1) ... [
            const SizedBox( height: 200 ),
          ] else if (_currentTools == 2) ... [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("ข้อมูลการใช้งาน", style: TextStyle(color: Colors.grey[600], fontSize: 20, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 16.0),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    //color: Colors.white,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0)
                    ),
                    child: Table(
                      columnWidths: const {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(3),
                        2: FlexColumnWidth(5),
                        3: FlexColumnWidth(3),
                        4: FlexColumnWidth(3),
                      },
                      children: [
                        TableRow(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 30, 38, 57),
                          ),
                          children: [
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("ลำดับ", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("วัน-เดือน-ปี", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("รายการ", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("แก้ไขรายการ", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("ลบรายการ", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                          ]
                        ),
                        TableRow(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 30, 38, 57),
                          ),
                          children: [
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("1", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("14-10-2565", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("บันทึกหลังการสอน", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: Text("edit", style: TextStyle(color: Colors.green[300], fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: Text("delete", style: TextStyle(color: Colors.red[400], fontSize: 20, fontWeight: FontWeight.w600))),
                          ]
                        ),
                        TableRow(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 30, 38, 57),
                          ),
                          children: [
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("2", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("15-10-2565", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: const Text("บันทึกแผนการสอน", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: Text("edit", style: TextStyle(color: Colors.green[300], fontSize: 20, fontWeight: FontWeight.w600))),
                            Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)), child: Text("delete", style: TextStyle(color: Colors.red[400], fontSize: 20, fontWeight: FontWeight.w600))),
                          ]
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ] else if (_currentTools == 3) ... [
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Image.asset("assets/stupid_chart.png"),
            ),
          ],

          ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          Container(
            margin: const EdgeInsets.only(top: 115),
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
