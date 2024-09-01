import 'package:assignment9/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'body_information.dart';
import 'my_drawer_header.dart';



class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      drawer: Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            myHeaderDrawer(),
            myDrawerList(),
          ],
        ),
      ),

      ),
      appBar: AppBar(
        leadingWidth: 100,
        leading: Builder(
          builder:(context){
            return TextButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, child: Text('HUMMING BIRD'));}
        ),
         title:Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Episodes'),
              ),
              Text('About')
            ],
          ),
        )
      ),

      body:
     ResponsiveBuilder(
       mobile:bodyForMobile(),
       tablet: bodyForMobile(),
        desktop: bodyForDesktop()
        
      )

    );
  }

}

Widget myDrawerList(){
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child:  Container(
          child: Column(
               children: [
                  Row(
                    children: [
                    Expanded(child: Icon(
                         Icons.movie,
                         size: 20,
                         color: Colors.black,
                     ),
                    ),
                    Expanded(
                    flex: 1,
                    child: Text('Episodes', style: TextStyle(color: Colors.black, fontSize: 16),),),
                    ],
                    ),
                     SizedBox(
                      height: 50,
                      ),
                    Row(
                      children: [
                       Expanded(child: Icon(
                         Icons.message,
                        size: 20,
                        color: Colors.black,
                    ),
                    ),
                    Expanded(
                    flex: 1,
                    child: Text('About', style: TextStyle(color: Colors.black, fontSize: 16),),),

              ],
          )
        ],
        ),
        )
    )
  );
}

