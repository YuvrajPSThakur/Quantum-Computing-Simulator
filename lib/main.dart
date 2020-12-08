import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'help.dart';
void main() => runApp(MaterialApp(
    home: Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String i1 = '0' ,i2 = '1',i3 = '1', i4 = '0',i5 = '0' ,i6 = '1',i7 = '0',i8 = '1' ;
  String i44,i11,i66;
  String i33,i55,i88,i22,i77 ;
  String i18, i25,i47,i12,i85,i63;
  String i42 , i86 , iss;
  String ixx = 'X';
  int moves = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quantum Computing Simulator')
        ,
        centerTitle: true,


      ),
      drawer: Drawer(
        child: Help(),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical :8.0, horizontal: 10),
            child: Text(
              'Drag from left and open the side bar to know about the Quantum Gates ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue[800],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal : 10.0 , vertical: 2),
            child: Text(
              'Try making all the states 0 or 1 in minimum moves possible',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue[600],
              ),
            ),
          ),

          Divider(
            height: 4,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Moves - $moves',
                  style: TextStyle(
                    fontSize: 22 ,
                  ),

                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top : 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                RaisedButton(
                  onPressed: (){
                    setState(() {
                      moves ++ ;
                      i22 = i2;
                      if (i2=='1'){
                        i22 = '0';
                      }
                      if (i2 =='0') {
                        i22='1';
                      }

                      i2= i22 ;
                      i44 = i4;
                      if (i4=='1'){
                        i44 = '0';
                      }
                      if (i4 =='0') {
                        i44='1';
                      }

                      i4= i44;
                      i11 = i1;
                      if (i1=='1'){
                        i11 = '0';
                      }
                      if (i1 =='0') {
                        i11='1';
                      }

                      i1= i11;


                    });

                  },
                  child: Text('Z-gate'),
                ),

                RaisedButton(
                  onPressed: (){
                    setState(() {
                      moves ++ ;
                      i42 = i2 ;
                      i2 = i4 ;
                      i4 = i42 ;
                      i86 = i8;
                      i8 = i6 ;
                      i6 = i86;
                      iss = i1 ;

                      if (i1 == 'X')
                        i1 = ixx  ;
                      if (iss == '1'){
                        ixx = '1' ;
                        i1 = 'X';
                      }
                      if (iss == '0'){
                        ixx = '0' ;
                        i1 = 'X' ;
                      }
//                      print( '$i1 , $ixx') ;

                    });

                  },
                  child: Text('CZ-gate'),
                ),

                RaisedButton(
                  onPressed: (){
                    setState(() {
                      moves ++ ;
                      i88 = i8;
                      if (i8=='1'){
                        i88 = '0';
                      }
                      if (i8 =='0') {
                        i88='1';
                      }

                      i8= i88;
                      i66 = i6;
                      if (i6=='1'){
                        i66 = '0';
                      }
                      if (i6 =='0') {
                        i66='1';
                      }

                      i6= i66;
                      i11 = i1;
                      if (i1=='1'){
                        i11 = '0';
                      }
                      if (i1 =='0') {
                        i11='1';
                      }

                      i1= i11;


                    });

                  },
                  child: Text('Z-gate'),
                ),






              ],
            ),

          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Container(
                height: 70 ,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent[100],
                ),
                padding: EdgeInsets.all(20),
                //color: Colors.blueAccent[100],
                child: Text(i1,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal[50],
                  ),


                ),
              ),
            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Container(
                height: 70 ,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent[100],
                ),
                padding: EdgeInsets.all(20),
                //color: Colors.blueAccent[100],
                child: Text('$i2',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal[50],
                  ),


                ),
              ),

              Container(
                height: 70 ,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent[100],
                ),
                padding: EdgeInsets.all(20),
                //color: Colors.blueAccent[100],
                child: Text('$i8',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal[50],
                  ),


                ),
              ),
            ],

          ),
          SizedBox( height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 70 ,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent[100],
                ),
                padding: EdgeInsets.all(20),
                //color: Colors.blueAccent[100],
                child: Text('$i4',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal[50],
                  ),


                ),
              ),
              Container(
                height: 70 ,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent[100],
                ),
                padding: EdgeInsets.all(20),
                //color: Colors.blueAccent[100],
                child: Text('$i5',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal[50],
                  ),


                ),
              ),
              Container(
                height: 70 ,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent[100],
                ),
                padding: EdgeInsets.all(20),
                //color: Colors.blueAccent[100],
                child: Text('$i6',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal[50],
                  ),


                ),
              ),


            ],
          ),
          SizedBox( height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Container(
                height: 70 ,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent[100],
                ),
                padding: EdgeInsets.all(20),
                //color: Colors.blueAccent[100],
                child: Text('$i7',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal[50],
                  ),


                ),
              ),

              Container(
                height: 70 ,
//                width: 65,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent[100],
                ),
                padding: EdgeInsets.all(20),
                //color: Colors.blueAccent[100],
                child: Text('$i3',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal[50],
                  ),


                ),
              ),
            ],

          ),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  setState(() {
                    moves ++ ;
                    i77 = i7;
                    if (i7=='1'){
                      i77 = '0';
                    }
                    if (i7 =='0') {
                      i77='1';
                    }

                    i7= i77;

                    i55 = i5;
                    if (i5=='1'){
                      i55 = '0';
                    }
                    if (i5=='0'){
                      i55 = '1' ;
                    }
                    i5= i55;
                    i88 = i8;
                    if (i8=='1'){
                      i88 = '0';
                    }
                    if (i8 =='0') {
                      i88='1';
                    }

                    i8= i88;
                  });

                },
                child: Text('X-gate'),
              ),
              RaisedButton(
                onPressed: (){
                  setState(() {
                    moves ++ ;
                    i33 = i3;
                    if (i3=='1'){
                      i33 = '0';
                    }
                    if (i3 =='0') {
                      i33='1';
                    }

                    i3= i33;

                    i55 = i5;
                    if (i5=='1'){
                      i55 = '0';
                    }
                    if (i5=='0'){
                      i55 = '1' ;
                    }
                    i5= i55;
                    i22 = i2;
                    if (i2=='1'){
                      i22 = '0';
                    }
                    if (i2 =='0') {
                      i22='1';
                    }

                    i2= i22;
                  });

                },
                child: Text('X-gate'),
              ),


            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right:8.0, left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    setState((){
                      moves ++ ;
                      i18 = i8 ;
                      i8 = i1 ;
                      i1 = i18 ;
                      //2nd
                      i25 = i5 ;
                      i5 = i2 ;
                      i2 = i25 ;
                      //3rd
                      i47 = i7 ;
                      i7 = i4;
                      i4 = i47 ;
                    }
                    );
                  },
                  child: Text('H-gate'),
                ),

                RaisedButton(
                  onPressed: (){
                    setState((){
                      moves ++ ;
                      i12 = i2 ;
                      i2 = i1 ;
                      i1 = i12 ;
                      //2nd
                      i85 = i5 ;
                      i5 = i8 ;
                      i8 = i85 ;
                      //3rd
                      i63 = i3 ;
                      i3 = i6;
                      i6 = i63 ;
                    }
                    );
                  },
                  child: Text('H-gate'),
                ),
              ],
            ),

          ),
          IconButton(icon: Icon( Icons.refresh), onPressed: (){
            i1 = '1' ;i2 = '1';i3 = '1'; i4 = '0'; i5 = '1' ;i6 = '1';i7 = '0';i8 = '1';
            moves = 0 ;



          })



        ],
      ),


    );
  }
}
