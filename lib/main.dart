
import 'package:flutter/material.dart';


void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: home_screen(),
    );
  }
}



class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("hello flutter app "),
      
     ),
    //  body: Center(
    //   child:Container(
    //     height: 100,
    //     width: 100,
    //     color: Colors.red),
    //     child: Text("hello container"),
    //   )
    //   // Text("hello world",style: 
      // TextStyle(color: Colors.blue,fontSize: 40,
      // fontWeight: FontWeight(800),),) ,
    


// container :

// body: Container(
//   height: 200,
//   width: 200,
//   color: Colors.blue,
//   decoration: BoxDecoration(
//     // borderRadius: BorderRadius.circular(34)),


//   child: Text("hello container this is the box", 
//   style: TextStyle(color: Colors.red,fontSize: 24,
  
//   ),),




//   ),
  





//      );

    //  Text("hello"),



body: Center(
  child: Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(
    color: Colors.blue,
      borderRadius:BorderRadius.circular(48),
    ),
    child: Center(
      child: Text(
        "hello container this is the box",
        style: TextStyle(
          color: Colors.red,
          fontSize: 24,
        ),
      ),
      
    ),
  ),



    )
    );
  }
}