//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(points());
}

class points extends StatefulWidget {
  @override
  State<points> createState() => _pointsState();
}

class _pointsState extends State<points> {
  int teamAPoints=0;

  int teamBPoints=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //Color(0xff6A8370)
          backgroundColor: Color(0xff6A8370),
          title:const Text(
            "Points Counter",
            style: TextStyle(
              fontFamily: "Pattaya",
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(

          children: [
            SizedBox(height:50 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                   const Text(
                      "Team A",
                      style: TextStyle(
                        fontFamily: "Pattaya",
                        color: Color(0xff6A8370),
                        fontSize: 45,
                      ),
                    ),
                     Text(
                      "$teamAPoints",
                      style:const TextStyle(
                        //fontFamily: "Pattaya",
                        color: Colors.black,
                        fontSize: 120,
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(minimumSize:Size(40,50),backgroundColor:Color(
                          0xff5b7160) ,)
                      ,
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(
                          fontFamily: "Pattaya",
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16,),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(minimumSize:Size(40,50),backgroundColor:Color(
                          0xff5b7160) ,)
                      ,
                      onPressed: () {
                        setState(() {
                          teamAPoints+=2;
                        });
                      },
                      child: const Text(
                        "Add 2 Point",
                        style: TextStyle(
                          fontFamily: "Pattaya",
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(minimumSize:Size(40,50),backgroundColor:Color(
                          0xff5b7160) ,)
                      ,
                      onPressed: () {
                        setState(() {
                          teamAPoints+=3;
                        });
                      },
                      child: const Text(
                        "Add 3 Point",
                        style: TextStyle(
                          fontFamily: "Pattaya",
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height:420 ,
                  child: VerticalDivider(thickness: 0.5,color:Color(
                      0xffb3cdb9) ,indent: 20,),
                )
                ,
                Column(
                  children: [
                    const  Text(
                      "Team B",
                      style: TextStyle(
                        fontFamily: "Pattaya",
                        color: Color(0xff6A8370),
                        fontSize: 45,
                      ),
                    ),
                    Text(
                      "$teamBPoints",
                      style:const TextStyle(
                        //fontFamily: "Pattaya",
                        color: Colors.black,
                        fontSize: 120,
                      ),

                    ),
                    const SizedBox(height: 30,)
                    ,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(minimumSize:Size(40,50),backgroundColor:Color(
                          0xff5b7160) ,)
                      ,
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child:  const Text(
                        "Add 1 Point",
                        style: TextStyle(
                          fontFamily: "Pattaya",
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16,),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(minimumSize:Size(40,50),backgroundColor:Color(
                          0xff5b7160) ,)
                      ,
                      onPressed: () {
                        setState(() {
                          teamBPoints+=2;
                        });
                      },
                      child:const Text(
                        "Add 2 Point",
                        style: TextStyle(
                          fontFamily: "Pattaya",
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(minimumSize:Size(40,50),backgroundColor:Color(
                          0xff5b7160) ,)
                      ,
                      onPressed: () {
                        setState(() {
                          teamBPoints+=3;
                        });
                      },
                      child:const Text(
                        "Add 3 Point",
                        style: TextStyle(
                          fontFamily: "Pattaya",
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 110,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize:Size(170,50),backgroundColor:Color(
                  0xff5b7160) ,)
              ,
              onPressed: () {
                setState(() {
                  teamAPoints=0;
                  teamBPoints=0;
                });
              },
              child:const Text(
                "Reset",
                style: TextStyle(
                  fontFamily: "Pattaya",
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
