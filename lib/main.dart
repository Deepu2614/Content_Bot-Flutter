import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'intrest.dart';


void main() {
  runApp(MyApp());
}




class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Interest> interest= [];

  void _getInterests(){
    interest=Interest.getInterest();
  }

  @override
  Widget build(BuildContext context) {
    _getInterests();
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF4174fe),
        body: SafeArea(
          child: Column(

            children: [

              const SizedBox(height: 20),

              _myappbar(),

              const SizedBox(height: 20),

              Column(
                children: [
                  Container(
                    height: 270,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.asset('assets/tech.png'),
                    ),
                  ),

                  Text('Hi!\nI\'m Content Bot',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoMono(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 23,
                        fontWeight: FontWeight.w400

                    ),
                  ),

                  Text('What category do you choose?',
                    style: GoogleFonts.openSans(
                        color: Colors.white.withOpacity(0.6),
                        // letterSpacing: 1,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 20,
                          height: 7,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                        ),



                        Container(
                          height: 170,
                          child: ListView.separated(
                            padding: EdgeInsets.only(left: 100,right: 100,top: 20,bottom: 20),
                            scrollDirection: Axis.vertical,
                            separatorBuilder: (context,index) => SizedBox(height: 10,),

                            itemBuilder: (context,index){
                              return GestureDetector(
                                onTap: (){
                                  print("Tapped");
                                },
                                child: Container(

                                  alignment: Alignment.center,
                                  height: 40,
                                  child: Container(
                                    padding: EdgeInsets.only(top: 13,bottom: 13,left: 40,right: 40),
                                      child: Text(
                                        interest[index].name,
                                        style: GoogleFonts.nunito(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white.withOpacity(0.8)
                                    ),
                                  ),
                                  color: Colors.transparent,
                                ),
                              );
                            },
                            itemCount: interest.length,
                          ),


                        ),




                        Container(
                          width: 20,
                          height: 7,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                        ),


                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.navigate_next,color: Colors.white),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),

      )
    );
  }
}


_myappbar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leadingWidth: 70,
    leading: Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: (){},
        child: Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle
          ),
          child: const Icon(Icons.info),
        ),
      ),
    ),


    actions: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
        child: InkWell(
          onTap: (){},
          child: Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle
            ),
            child: const Icon(Icons.file_copy_rounded),
          ),
        ),
      ),
    ],
  );
}