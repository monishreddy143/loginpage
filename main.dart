import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(myapp());

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myhome(),
    );
  }
}

class myhome extends StatefulWidget {

  @override
  _myhomeState createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  String name="";
  bool change=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 110, 0,0),
                    child: Text('Hello',style: TextStyle(fontSize:80,fontWeight: FontWeight.bold ),),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(17, 175, 0,0),
                    child: Text('There',style: TextStyle(fontSize:80,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(219, 175, 0,0),
                    child: Text('.',style: TextStyle(fontSize:80,fontWeight: FontWeight.bold,color: Colors.greenAccent ),),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 35,left: 20,right: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'EMAIL or USERNAME',
                      labelStyle: TextStyle(
                          color: Colors.greenAccent
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Colors.green)
                      ),
                    ),
                    // onChanged: (value){
                    //   name=value;
                    //   change=true;
                    //   setState(() {});
                    // },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'PASSWORD',
                      labelStyle: TextStyle(
                          color: Colors.greenAccent
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color:Colors.green)
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    alignment: Alignment(1.0 ,0.0),
                    padding: EdgeInsets.only(top: 20),
                    child: InkWell(
                      child: Text(
                        'Forgot password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    height: 40,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      shadowColor: Colors.greenAccent,
                      color: Colors.greenAccent,
                      elevation: 7,
                      child: GestureDetector(
                        onTap: (){},
                        child: Center(
                          child: Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: ImageIcon(AssetImage('assets/facebook.png')),
                          ),
                          SizedBox(width: 10),
                          Text('Login to Facebook',style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New to Spotify ?",
                style: TextStyle(
                ),
                ),
                InkWell(
                onTap: (){},
                  child: Text('  Register',
                    style: TextStyle(
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

