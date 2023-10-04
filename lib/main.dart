import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: scicalc(),
  ));
}

class scicalc extends StatefulWidget {
  const scicalc({Key? key}) : super(key: key);

  @override
  State<scicalc> createState() => _scicalcState();
}

class _scicalcState extends State<scicalc> {

  String ans = "";
  String a = "";
  String b = "";
  int t = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(flex: 2,
              child: Row(
                children: [
                  Expanded(child: Container(
                    child: Text("${ans}",style: TextStyle(fontSize: 20,color: Colors.black),),
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 3,color: Colors.black),
                    ),
                  ))
                ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () {
                  ans = "";
                  a = "";
                  b = "";
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("AC",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.orange),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 10.0, right: 0.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 3,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {

               if(ans!="")
                 {
                   ans = ans.substring(0,ans.length- 1);
                 }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 10.0, right: 0.0, bottom: 10.0),
                  child: Text("C",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.orange),),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3,color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  a = ans; // number1 * ppercentage value / 100;   10 * 50% / 100 = 500 / 100 = 5;
                  ans = "";// return number1 + percentage // 10 + 5 = 15
                  t = 5;
                  // double per = s1 * s2 / 100;
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 10.0, right: 0.0, bottom: 10.0),
                  child: Text("%",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.orange),),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3,color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  a = ans;
                  ans = "";
                  t = 4;
                  setState(() {

                  });
                },
                child: Container(
                  child: Text(
                    '÷',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25,color: Colors.orange),
                  ),
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.redAccent,
                  // margin: EdgeInsets.all(10.0),
                  margin: EdgeInsets.only(
                      left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ))
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () => fun("7"),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // color: Colors.blue,
                  // margin: EdgeInsets.all(10.0),
                  child: Text(
                    '7',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => fun("8"),
                child: Container(
                  child: Text(
                    '8',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // color: Colors.brown,
                  // margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => fun("9"),
                child: Container(
                  child: Text(
                    '9',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // color: Colors.teal,
                  // margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  a = ans;
                  ans = "";
                  t = 3;
                  setState(() {

                  });
                },
                child: Container(
                  child: Text(
                    '*',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25,color: Colors.orange),
                  ),
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 10.0, bottom: 10.0),
                  // color: Colors.pink,
                  // margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ))
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () => fun("4"),
                child: Container(
                  child: Text(
                    '4',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // color: Colors.grey,
                  // margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => fun("5"),
                child: Container(
                  child: Text(
                    '5',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // color: Colors.blueGrey,
                  // margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => fun("6"),
                child: Container(
                  child: Text(
                    '6',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // color: Colors.lime,
                  // margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  a = ans;
                  ans = "";
                  t = 2;
                  setState(() {

                  });
                },
                child: Container(
                  child: Text(
                    '-',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.orange
                    ),
                  ),
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 10.0, bottom: 10.0),
                  // color: Colors.yellow,
                  // margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ))
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () => fun("1"),
                child: Container(
                  child: Text(
                    '1',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // margin: EdgeInsets.all(10.0),
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.tealAccent,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => fun("2"),
                child: Container(
                  child: Text(
                    '2',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // margin: EdgeInsets.all(10.0),
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.purpleAccent,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => fun("3"),
                child: Container(
                  child: Text(
                    '3',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // margin: EdgeInsets.all(10.0),
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.green,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  a = ans;
                  ans = "";
                  t = 1;
                  setState(() {

                  });
                },
                child: Container(
                  child: Text(
                    '+',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.orange),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 10.0, bottom: 10.0),
                  // margin: EdgeInsets.all(10.0),
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.purple,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ))
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () => fun("0"),
                child: Container(
                  child: Text(
                    '0',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // margin: EdgeInsets.all(10.0),
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.orangeAccent,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => fun("00"),
                child: Container(
                  child: Text(
                    '00',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // margin: EdgeInsets.all(10.0),
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.orangeAccent,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => fun("."),
                child: Container(
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 0.0, bottom: 10.0),
                  // margin: EdgeInsets.all(10.0),
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.lightGreen,
                  decoration: BoxDecoration(
                    // color: Colors.lightGreen,
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  b = ans;
                  // int s1 = int.parse(a);
                  // int s2 = int.parse(b);
                  double s1 = double.parse(a);
                  double s2 = double.parse(b);
                  // int sum = 0;
                  double sum = 0;

                  if(t == 1)
                    {
                      // sum = s1 + s2;
                      sum = s1 + s2;
                      // t = 0;
                    }
                  else if(t == 2)
                    {
                      sum = s1 - s2;
                    }
                  else if(t == 3)
                    {
                      sum = s1 * s2;
                    }
                  else if(t == 4)
                    {
                      // sum = (s1 / s2).floor();
                      sum = s1 / s2.round();
                    }
                  else if(t == 5)
                    {
                      // sum = s1 % s2.round();
                      double per = s1 * s2 / 100;
                      sum = s1 + per;
                      // sum = s1 + per;
                    }
                  // ans = sum.toString();
                  ans = sum.toStringAsFixed(2);
                  // print(sum);
                  setState(() {

                  });
                },
                child: Container(
                  child: Text(
                    '=',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 10.0, bottom: 10.0),
                  // margin: EdgeInsets.all(10.0),
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.cyanAccent,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    border: Border.all(width: 3, color: Colors.black),
                    // borderRadius: BorderRadius.circular(15),
                    borderRadius: BorderRadius.circular(500),
                  ),
                ),
              ))
            ],
          ))
        ],
      ),
    );
  }
  fun(String a)
  {
    ans = ans + a;
    setState(() {

    });
    print(ans);
  }
}
