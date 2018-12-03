import 'package:flutter/material.dart';
import 'Order.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
        
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: new Container(
      
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/pizza.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(

         child: new RaisedButton(
           child: Text('Order',style: TextStyle(
               fontSize: 18.0,
           color: Colors.red,

           ),),
             elevation: 3.0,
             color: Colors.white,
             padding: EdgeInsets.all(25.0),

             shape: CircleBorder(side: BorderSide(color: Colors.red)),
             onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Order()),
               );
             }

         ),

        ),
      ),


    );

  }
}
