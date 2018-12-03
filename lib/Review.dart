import 'package:flutter/material.dart';
import 'Pizza.dart';

class Review extends StatelessWidget {
  pizza _pizzaOrder;
  List<String>_list = new List<String>();
  Review ({order : null}){
    _pizzaOrder = order;
    _list.add("Size: ${_pizzaOrder.size}");
    _list.add(" ");
    _list.add("toppings: ");
    _pizzaOrder.toppings.forEach((String name,bool value){
      if (value) _list.add(name);
    });

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Review',),
        centerTitle: true,
      ),
      body: new Container(
        padding: EdgeInsets.all(38.0),
//decoration:new BoxDecoration(
//  gradient: new LinearGradient(
//    begin: const Alignment(0.0, -1.0),
//    end: const Alignment(0.0, 0.9),
//    colors: <Color>[
//      const Color(0x00ef5350),
//      const Color(0xffef8199),
//
//    ],
//  )
//),
child: new Column(
  children: <Widget>[
    new Text('Review Your Order',style:
      new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.red),

    ),
    new Expanded(
        child: new ListView.builder(
            shrinkWrap: true,
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int index ){
              return new Text(_list.elementAt(index));
          },

        )
    )
  ],
),
      ),
    );


  }
}

