import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inherited_widget/homepage.dart';
import 'package:flutter_inherited_widget/eventpage.dart';
import 'package:flutter_inherited_widget/statecontainer.dart';




class AddEvent extends StatefulWidget {

  final Widget child;


  AddEvent({Key key, this.child}) : super(key : key);


  @override
  _AddEventState createState() => _AddEventState();

}





class _AddEventState extends State<AddEvent> {

  //---HERE Decleared  Variable and  global Key---

  String forEventVal, forDetailVal, forDateVal, forLocationVal;


  final editKey = new GlobalKey<FormState>();



  //------'submitEventDetails' Function Begins-----

  submitEventDetails(){


    final myInheritedWidget = StateContainer.of(context);


    if(editKey.currentState.validate()){


      editKey.currentState.save();


      myInheritedWidget.updateEventInfo(


        eventName: forEventVal,

        eventDetails: forDetailVal,

        eventDate: forDateVal,

        eventLocation: forLocationVal,


      );

      Navigator.pop(context);

    }
    else
    {

      print('Error in Validation');

    }

  }

  //------END OF THE 'submitEventDetails' Function-----





  @override
  Widget build(BuildContext context) {


    return Scaffold(

      //---------APP BAR BEGINS IN NEW EVENT PAGE -----------
      
      appBar: AppBar(


        title: Container(

          alignment: Alignment.center,

          child: Text(
            
            "New Event",

            style: TextStyle(

              color: Colors.white,

              fontSize: 24.0,

            ),

          ),

        ),


      ),

      //---------END OF THE APP BAR IN NEW EVENT PAGE -----------




      //---------BODY PART OF THE NEW EVENT PAGE BEGINS -----------

      body: SingleChildScrollView(

        child: Form(


          key: editKey,


          child: Container(


            child: Column(


              mainAxisAlignment: MainAxisAlignment.spaceEvenly,


              children: <Widget>[



                //1st 'Event name'
                Padding(

                  padding: EdgeInsets.only(left: 8.0, right: 8.0),


                  child: Container(

                    child: TextFormField(


                      keyboardType: TextInputType.text,


                      decoration: InputDecoration(
                        
                        labelText: "Event Name",
                        
                      ),


                      validator: (value) =>
                      
                      value.length == 0 ? 

                      "Enter Event Name" : null,

                      onSaved: (value) => forEventVal = value,


                    ),

                  ),

                ),



                //2nd 'Event name'
                Padding(

                  padding: EdgeInsets.only(left: 8.0, right: 8.0),

                  child: Container(

                    child: TextFormField(


                      keyboardType: TextInputType.text,


                      decoration: InputDecoration(
                        
                        labelText: "Event Details",
                        
                      ),


                      validator: (value) =>
                      
                      value.length == 0 ? 

                      "Enter Event Details" : null,

                      onSaved: (value) => forDetailVal = value,

                    ),

                  ),

                ),



                //3rd 'Event name'
                Padding(

                  padding: EdgeInsets.only(left: 8.0, right: 8.0),

                  child: Container(

                    child: TextFormField(


                      keyboardType: TextInputType.text,


                      decoration: InputDecoration(
                        
                        labelText: "Event Date",
                        
                      ),


                      validator: (value) =>
                      
                      value.length == 0 ? 

                      "Enter Event Date" : null,

                      onSaved: (value) => forDateVal = value,

                    ),

                  ),

                ),



                //4th 'Event name'
                Padding(

                  padding: EdgeInsets.only(left: 8.0, right: 8.0),

                  child: Container(

                    child: TextFormField(


                      keyboardType: TextInputType.text,


                      decoration: InputDecoration(
                        
                        labelText: "Event Location",
                        
                      ),


                      validator: (value) =>
                      
                      value.length == 0 ? 

                      "Enter Event Location" : null,

                      onSaved: (value) => forLocationVal = value,

                    ),

                  ),

                ),



                SizedBox(height: 10.0),




                //-----BUTTON "Submit" IN PAGES BEGINS--------

                RaisedButton(

                  child: Text(

                    'Submit',

                    style: TextStyle(

                      fontSize: 18.0,

                      color: Color(0xffe81035),

                    ),

                  ),


                  onPressed: submitEventDetails,

                ),

                //-----END OF THE BUTTON "Submit"... IN PAGES--------




                Container(

                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[


                      //-----BUTTON "Home Page" IN PAGES BEGINS--------

                      RaisedButton(

                        child: Text(

                          'Home Page',

                          style: TextStyle(

                            fontSize: 18.0,

                            color: Color(0xffe81035),

                          ),

                        ),


                        onPressed: (){

                          Navigator.of(context).push(
                            
                            MaterialPageRoute<Null>(

                              builder: (BuildContext context){

                                return HomePage();

                              }

                            ),

                          );

                        },

                      ),

                      //-----END OF THE BUTTON "Home Page" IN PAGES--------


                      SizedBox(width: 10.0),



                      //-----BUTTON "Event Page" IN PAGES BEGINS--------

                      RaisedButton(

                        child: Text(

                          'Event Page',

                          style: TextStyle(

                            fontSize: 18.0,

                            color: Color(0xffe81035),

                          ),

                        ),


                        onPressed: (){

                          Navigator.of(context).push(
                            
                            MaterialPageRoute<Null>(

                              builder: (BuildContext context){

                                return EventPage();

                              }

                            ),

                          );

                        },


                      ),

                      //-----END OF THE BUTTON "Event Page" IN PAGES--------



                    ],

                  ),

                ),


              ],

            ),

          ),

        ),

      ),

      //---------END OF THE BODY PART OF THE NEW EVENT PAGE -----------

    );

  }

}