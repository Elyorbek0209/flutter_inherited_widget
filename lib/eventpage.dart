import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/statecontainer.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'addevent.dart';

import 'event.dart';




class EventPage extends StatefulWidget {

  final Widget child;


  EventPage({Key key, this.child}) : super(key : key);


  @override
  _EventPageState createState() => _EventPageState();

}




class _EventPageState extends State<EventPage> {


  Event event;


  _addEventDetails(BuildContext context){

    Navigator.push(context, MaterialPageRoute(

        fullscreenDialog: true,

        builder: (context){

         return AddEvent();

        }

      )
      
    );


  }




  @override
  Widget build(BuildContext context) {


    final myInheritedWidget = StateContainer.of(context);


    final event = myInheritedWidget.event;



    return Scaffold(
      
      //-------APP BAR BEGINS -------

      appBar: AppBar(


        title: Container(


          alignment: Alignment.center, 
          
          
          child: Text(
            
            'Event Page',

            style: TextStyle(

              color: Colors.white,

            ),

          ),

        ),


      ),

      //-------END OF THE APP BAR -------



      //-------BODY PART BEGINS -------

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
                          

                          //1st ELEMENT---if 'event' NOT EQAUL TO NULL 
                          event != null?


                          Text(
                            
                            '${event.eventName}',
                            
                            style: TextStyle(

                              fontSize: 30.0, 

                              color: Color(0xffe81035)

                            ),
                          
                          )

                          : Text('No Event Name'),



                          SizedBox(height: 10.0),



                          //2nd ELEMENT---if 'event' NOT EQAUL TO NULL 
                          event != null?


                          Text(
                            
                            '${event.eventDetails}',
                            
                            style: TextStyle(

                              fontSize: 30.0, 

                              color: Color(0xff00b0ff)

                            ),
                          
                          )

                          : Text('No Event Details'),



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


                                //3rd ELEMENT---if 'event' NOT EQAUL TO NULL 
                                event != null?


                                Text(
                                  
                                  '${event.eventDate}',

                                  style: TextStyle(

                                    fontSize: 30.0,

                                    color: Color(0xffe81035),

                                  ),

                                )

                                : Text('No Event Date'),


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


                                //4th ELEMENT---if 'event' NOT EQAUL TO NULL 
                                event != null?


                                Text(
                                  
                                  '${event.eventLocation}',

                                  style: TextStyle(

                                    fontSize: 18.0,

                                    color: Color(0xffe81035),

                                  ),

                                )

                                : Text('No Location'),


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


      //-------END OF THE BODY PART -------


    );
    
  }

}