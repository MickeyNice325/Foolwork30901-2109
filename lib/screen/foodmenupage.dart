import 'package:flutter/material.dart';
import 'package:flutter_application_1/FoodMenu.dart';

class MyfoodPage extends StatefulWidget {
  const MyfoodPage({super.key});

  @override
  State<MyfoodPage> createState() => _MyfoodPageState();
}

class _MyfoodPageState extends State<MyfoodPage> {
  
  List<FoodMenu> menu = [
    FoodMenu("ฟาย", "500", "asset/images/1.jpg"),
    FoodMenu("Nieger", "10", "asset/images/2.jpg"),
    FoodMenu("Pizza", "250", "asset/images/3.jpg"),
    FoodMenu("Donut", "1000", "asset/images/4.jpg"),
    FoodMenu("berger", "25423456786475", "asset/images/5.jpg"),
  ];


  List<CartItem> cart = [];

  void addToCart(FoodMenu food, int quantity) {
    setState(() {
      var existingItem = cart.firstWhere(
        (item) => item.food.name == food.name,
        orElse: () => CartItem(food, 0),
      );

      if (existingItem.quantity == 0) {
        cart.add(CartItem(food, quantity));
      } else {
        existingItem.quantity += quantity;
      }
    });
  }

  void showImagePopup(FoodMenu food) {
    int quantity = 1; 

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        food.img,
                        fit: BoxFit.cover,
                        height: 300,
                        width: 300,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      food.name,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text("ราคา ${food.price} บาท", style: TextStyle(fontSize: 18)),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
                              });
                            }
                          },
                        ),
                        Text(
                          '$quantity',
                          style: TextStyle(fontSize: 20),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        addToCart(food, quantity);
                        Navigator.pop(context); 
                      },
                      child: Text("เพิ่มไปยังตะกร้า"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 45),
                        primary: Colors.blue,
                        textStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แอปพลิเคชั่นสั่งอาหาร'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [

          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cart: cart),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, index) {
          FoodMenu food = menu[index];
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: GestureDetector(
                onTap: () {
                  showImagePopup(food); 
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    food.img,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                food.name,
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("ราคา " + food.price + " บาท"),
              trailing: IconButton(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.blue,
                ),
                onPressed: () {
                  addToCart(food, 1); 
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class CartItem {
  final FoodMenu food;
  int quantity;

  CartItem(this.food, this.quantity);
}

class CartScreen extends StatelessWidget {
  final List<CartItem> cart;

  CartScreen({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: cart.isEmpty
          ? Center(child: Text('ตะกร้าของคุณว่างเปล่า'))
          : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (BuildContext context, index) {
                CartItem cartItem = cart[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    title: Text(cartItem.food.name),
                    subtitle: Text(
                        "ราคา ${cartItem.food.price} บาท x ${cartItem.quantity}"),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        cartItem.food.img,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}