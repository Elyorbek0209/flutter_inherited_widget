import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'event.dart';



//---1st thing we'll create Statefull Widget----

class StateContainer extends StatefulWidget {


  final Widget child;

  final Event event;



  StateContainer({@required this.child, this.event});



  static StateContainerState of(BuildContext context){

    return(context.inheritFromWidgetOfExactType(InheritedContainer) as InheritedContainer).data;

  }


  StateContainerState createState() => StateContainerState();


}






class StateContainerState extends State<StateContainer> {
  

  Event event;



  void updateEventInfo({eventName, eventDetails, eventDate, eventLocation}){

    if(event == null){


      event = Event(
        
        eventName: eventName, 
        
        eventDetails: eventDetails, 
        
        eventDate: eventDate, 
        
        eventLocation: eventLocation
        
      );


      setState(() {

        event = event;

      });

    }

    else

    {

      setState(() {
        
        event.eventName = eventName ?? event.eventName;

        event.eventDetails = eventDetails ?? event.eventDetails;

        event.eventDate = eventDate ?? event.eventDate;

        event.eventLocation = eventLocation ?? event.eventLocation;

      });

    }

  }



  @override
  Widget build(BuildContext context) {

    return InheritedContainer(

      data: this,

      child: widget.child,

    );

  }

}





//---2nd we'll create 'Inherited Container Class ----

//-----------INHERITED CONTAINER WIDGET ---------
class InheritedContainer extends InheritedWidget{


  //---3rd we'll declare State Data
  final StateContainerState data;


  //---4th we'll pass that data in our CONSTRUCTOR
  InheritedContainer({Key key, @required this.data, @required Widget child}) : super(key: key, child: child);


  @override 
  bool updateShouldNotify(InheritedContainer oldWidget){

    return true;

  }

}