class pizza{
  static List<String> sizes = <String>["small","medium","large"];
  String size = sizes.elementAt(0);
  Map<String, bool> toppings = new Map<String,bool>();
  pizza(){
    toppings.putIfAbsent('Pepperomi', () => false);
    toppings.putIfAbsent('Sausage', () => false);
    toppings.putIfAbsent('Cheese', () => false);
    toppings.putIfAbsent('Pineapple', () => false);
    toppings.putIfAbsent('Onions', () => false);
    toppings.putIfAbsent('Mushrooms', () => false);
    toppings.putIfAbsent('Sardines', () => false);
    toppings.putIfAbsent('Pickless', () => false);
    toppings.putIfAbsent('Pepperoni', () => false);
    toppings.putIfAbsent('Chocolate', () => false);
    toppings.putIfAbsent('Bannana', () => false);
    toppings.putIfAbsent('Olives', () => false);
  }
}
