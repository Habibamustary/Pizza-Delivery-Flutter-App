import 'package:flutter/material.dart';
import 'Pizza.dart';
import 'Review.dart';


class Order extends StatefulWidget {
  @override
  _OrderState createState() => new _OrderState();
}

class _OrderState extends State<Order> {
  pizza _pizzaOrder = new pizza();
  void _setSize(String value){
    setState(() {
      _pizzaOrder.size = value;

    });
  }
  void _setToppings(int index, bool value){
    setState(() {
      String key = _pizzaOrder.toppings.keys.elementAt(index);
      _pizzaOrder.toppings[key] = value;

    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Pizza Order'),
        centerTitle: true,
      ),
      body: Center(
        child: new Container(
          padding: EdgeInsets.all(32.0),
            decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/order.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          child: new Column(
            children: <Widget>[
              new DropdownButton(
                value:  _pizzaOrder.size,
                  items: pizza.sizes.map((String value){
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Row(
                      children: <Widget>[
                        new Icon(Icons.local_pizza,color: Colors.amber,),
                        new Text('Size ${value}'),
                      ],
                    ),

                  );

                  }).toList(),
                  onChanged: (String value){_setSize(value);},

              ),
              new Expanded(
                  child: new ListView.builder(
                    shrinkWrap: true,
                    itemCount: _pizzaOrder.toppings.length,
                      itemBuilder: (BuildContext context, int index){
                      return CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                          title: new Text(_pizzaOrder.toppings.keys.elementAt(index)),
                          value: _pizzaOrder.toppings.values.elementAt(index),
                          onChanged: (bool value){_setToppings(index,value);});
                      }
                  ),
              ),
              new RaisedButton(
                child: Text('Continue',style: TextStyle(color: Colors.black),),
                padding: EdgeInsets.all(25.0),
                  shape: CircleBorder(side: BorderSide(color: Colors.red)),
                   onPressed: () {
                     Navigator.push(
                       context,
                     new MaterialPageRoute(
                         builder: (BuildContext context) =>new Review(order: _pizzaOrder,)),
                     );
                   }

                  ),
            ],

          ),

        ),
      ),
    );

  }
}
