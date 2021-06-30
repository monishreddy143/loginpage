import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 110, 0,0),
                    child: Text(
                      'Signup ',
                      style: TextStyle(
                        fontSize: 80,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(270, 120, 0,0),
                    child: Text(
                      '.',
                      style: TextStyle(
                          fontSize: 80,fontWeight: FontWeight.bold,color: Colors.green
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'EMAIL',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'PASSWORD',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'NICK NAME',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 10 ,right:10),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                shadowColor: Colors.green,
                elevation: 8,
                color: Colors.greenAccent,
                child: GestureDetector(
                  onTap: (){},
                  child: Center(
                    child: Text(
                      'ｓｉｇｎｕｐ',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 10,right: 10),
              color: Colors.transparent,
              child:Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.5,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text(' GO BACK',style:
                    TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}