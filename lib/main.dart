import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerWithCurvedBackground(),
    );
  }
}

class ContainerWithCurvedBackground extends StatefulWidget {
  @override
  State<ContainerWithCurvedBackground> createState() => _ContainerWithCurvedBackgroundState();
}

class _ContainerWithCurvedBackgroundState extends State<ContainerWithCurvedBackground> {
int c =0;
int item=0;

int p1=51,p2=30,p3=43;
void _incrementCounter(){
  setState(() {
    c++;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Curved Container with Image'),
          actions: [
      IconButton(
      icon: Icon(Icons.search),
      iconSize: 35,
      onPressed: () {
        print("Search");
      },
    ),
  ],

    backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('My Bag',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                // Curved Container
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black12,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text('\$$p1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
                Positioned(
                  top: 6,
                  right: 6,
                  child: Icon(Icons.more_vert,color: Colors.black,size: 30,),),
                // Positioned Image on the Left
                Positioned(
                  left: 0, // Adjust the left position as needed
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 100, // Adjust the width as needed
                    decoration: BoxDecoration(
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),

                      // borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                      child: Image.network(
                        "https://images.unsplash.com/photo-1695831440805-1b623520e70e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                        width: 300, // Adjust the width as needed
                        height: 200, // Adjust the height as needed
                        fit: BoxFit.cover, // Cover the entire space
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 105,
                  child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('T-Shirt',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 3,),
                      Row(
                        children: [
                          Text('Color:',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13,color: Colors.blueAccent),),
                          Text('Black   ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13,color: Colors.black),),
                          Text('Size:',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13,color: Colors.blueAccent),),
                          Text('L',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13,color: Colors.black),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          ElevatedButton(onPressed:(){
                            c++;
                            item++;
                            setState(() {
                          });
                          }, child: Text('+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), // Make it circular
                                padding: EdgeInsets.all(16), // Set padding as needed
                                //primary: color, // Set the button color
                                backgroundColor: Colors.black,
                              ),
                          ),
                          SizedBox(width: 5),
                          Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(width: 5),
                          ElevatedButton(onPressed:(){

                            c--;
                            item--;
                            setState(() {
                            });
                          }, child: Text('-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(), // Make it circular
                              padding: EdgeInsets.all(16), // Set padding as needed
                              //primary: color, // Set the button color
                              backgroundColor: Colors.black,
                            ),
                          )

                        ],
                      ),


                    ],
                  ),
                ),
                )
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                // Curved Container
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black12,
                  ),
                ),
                // Positioned Image on the Left
                Positioned(
                  left: 0, // Adjust the left position as needed
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 100, // Adjust the width as needed
                    decoration: BoxDecoration(
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),

                      // borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                      child: Image.network(
                        "https://images.unsplash.com/photo-1695831440805-1b623520e70e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                        width: 300, // Adjust the width as needed
                        height: 200, // Adjust the height as needed
                        fit: BoxFit.cover, // Cover the entire space
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                // Curved Container
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black12,
                  ),
                ),
                // Positioned Image on the Left
                Positioned(
                  left: 0, // Adjust the left position as needed
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 100, // Adjust the width as needed
                    decoration: BoxDecoration(
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),

                      // borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                      child: Image.network(
                        "https://images.unsplash.com/photo-1695831440805-1b623520e70e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                        width: 300, // Adjust the width as needed
                        height: 200, // Adjust the height as needed
                        fit: BoxFit.cover, // Cover the entire space
                      ),
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
