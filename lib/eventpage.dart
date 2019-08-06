import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'addevent.dart';

// import 'event.dart';




class HomePage extends StatefulWidget {

  final Widget child;


  HomePage({Key key, this.child}) : super(key : key);


  @override
  _HomePageState createState() => _HomePageState();

}





class _HomePageState extends State<HomePage> {


 // Event event;



  _addEventDetails(BuildContext context){

    Navigator.push(
      
      context, MaterialPageRoute(

        fullscreenDialog: true,

        builder: (context){

         // return AddEvent();

        }

      )
      
    );


  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(

        leading: IconButton(

          icon: Icon(
            
            FontAwesomeIcons.bars

          ),

          onPressed: (){

            //

          },

        ),


        title: Container(


          alignment: Alignment.center, 
          
          
          child: Text(
            
            'Home Page',

            style: TextStyle(

              color: Colors.white,

            ),

          ),

        ),



        actions: <Widget>[

          IconButton(

            icon: Icon(

              FontAwesomeIcons.tasks,

              size: 20.0,

              color: Colors.white,

            ),

            onPressed: (){

              //

            },

          )

        ],

      ),



      body: Container(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            Center(

              child: Container(

                width: 300.0,

                height: 300.0,

                child: Material(

                  color: Colors.white,

                  elevation: 4.0,

                  borderRadius: BorderRadius.circular(24.0),

                  shadowColor: Color(0x802196f3),


                  child: Center(

                    child: Padding(

                      padding: EdgeInsets.all(8.0),

                      child: Column(


                        mainAxisAlignment: MainAxisAlignment.center,


                        children: <Widget>[


                          Text(
                            
                            'EventName',
                            
                            style: TextStyle(

                              fontSize: 30.0, 

                              color: Color(0xffe81035)

                            ),
                          
                          ),


                          SizedBox(height: 10.0),


                          Text(
                            
                            'EventDetail',
                            
                            style: TextStyle(

                              fontSize: 30.0, 

                              color: Color(0xff00b0ff)

                            ),
                          
                          ),


                          SizedBox(height: 10.0),


                          Container(

                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,


                              children: <Widget>[

                                Icon(
                                  
                                  FontAwesomeIcons.calendarTimes,

                                  size: 20.0,

                                  color: Color(0xffe81035),
                                  
                                ),


                                SizedBox(height: 10.0),


                                Text(
                                  
                                  'EventDate',

                                  style: TextStyle(

                                    fontSize: 30.0,

                                    color: Color(0xffe81035),

                                  ),

                                ),


                              ],

                            ),

                          ),



                          Container(

                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,


                              children: <Widget>[

                                Icon(
                                  
                                  FontAwesomeIcons.mapMarkedAlt,

                                  size: 20.0,

                                  color: Color(0xffe81035),
                                  
                                ),


                                SizedBox(height: 10.0),


                                Text(
                                  
                                  'EventLocation',

                                  style: TextStyle(

                                    fontSize: 30.0,

                                    color: Color(0xffe81035),

                                  ),

                                ),


                              ],

                            ),

                          ),



                        ],

                      ),

                    ),

                  ),

                ),

              ),

            )

          ],

        ),

      ),



      floatingActionButton: FloatingActionButton(

        backgroundColor: Color(0xffe81035),

        child: Icon(
          
          FontAwesomeIcons.plus,

          size: 25.0,

          color: Colors.white,

        ),

        onPressed: (){

          _addEventDetails(context);

        },

      ),


    );
    
  }

}