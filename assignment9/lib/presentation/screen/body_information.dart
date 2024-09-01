import 'package:flutter/material.dart';

class bodyForMobile extends StatelessWidget {
  const bodyForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(

        child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child:
              Container(

                child: Column(
                  children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                          'FLUTTER WEB.',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                          'THE BASICS',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.w900),
                        )
                      ],
                    )
                  ],
                ),

              ),
            ),
              Container(
              child: Column(
                children: [
                  Wrap(
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text('In this course we will go over the basics of using Flutter web development. Topices will including Responsive Layout, Deploying, Font change, Over Functionality, model and more.',
                        style: TextStyle(
                          fontSize: 18
                        ),),
                      ),],

                    ),


                ],
              ),
            ),
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    ElevatedButton(onPressed: (){}, child: Text('Join Course',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent[200],
                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                      minimumSize: Size.fromRadius(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )


                    ))
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class bodyForDesktop extends StatelessWidget {
  const bodyForDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 800,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'FLUTTER WEB.',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.w900),
                              )

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'THE BASICS',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.w900),
                              )

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                              width: 600,
                                child:Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text('In this course we will go over the basics of using Flutter web development. Topices will including Responsive Layout, Deploying, Font change, Over Functionality, model and more.',
                                    style: TextStyle(
                                        fontSize: 24
                                    ),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              )

                            ],
                          )
                        ],
                      ),

                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(

                  children: [
                    Container(
                      height: 100,
                      child: Row(
                        children: [
                          ElevatedButton(onPressed: (){}, child: Text('Join Course',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.greenAccent[200],
                                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                                  minimumSize: Size.fromRadius(0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )
                              ))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}

