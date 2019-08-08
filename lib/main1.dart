import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/statecontainer.dart';
import 'homepage.dart';




void main(){
  
  runApp(
    
    StateContainer(

      child: MyApp(),

    )
    
  );

}



class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',

      theme: ThemeData(

           primaryColor: Colors.red,

      ),

      home: HomePage(),
    
    );

  }

}
