import 'package:flutter/material.dart';
import 'package:foodapp/config/config.dart';
import 'package:foodapp/screens/home/drawer_side.dart';
import 'package:foodapp/screens/home/single_products.dart';

class HomeScreen extends StatelessWidget {
  Widget _builtHerbProduct(){
    return Column(
      children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Herbs Seasonings',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            'View All',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      SizedBox(height: 10),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [

            SingleProducts(productImage: 'https://pngimg.com/d/basil_PNG10.png',
                productName: "Fresh Basil", onTap: (){}),
            SingleProducts(productImage: 'https://images.vexels.com/media/users/3/149073/isolated/preview/6123891dd9cde065538d8e72e0dba586-oregano-herb-illustration.png?w=360',
                productName: "Fresh Oregano", onTap: (){}),

            SingleProducts(productImage: 'https://www.pngmart.com/files/4/Mint-PNG-Free-Download.png',
                productName: "Fresh Mint", onTap: (){}),
            SingleProducts(productImage: 'https://static.vecteezy.com/system/resources/previews/054/719/424/non_2x/fresh-parsley-herb-arranged-neatly-on-a-clean-transparent-background-showcasing-its-vibrant-green-color-and-healthy-leaves-fresh-parsley-herb-on-transparent-background-free-png.png',
                productName: "Fresh Parsley", onTap: (){})
          ],
        ),
      ),
    ]
    );
  }
  Widget _builtFruitProduct(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Fresh Fruits',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              'View All',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [

              SingleProducts(productImage: "https://pngimg.com/uploads/apple/apple_PNG12405.png",
                  productName: "Apple", onTap: (){}),
              SingleProducts(productImage: "https://pngimg.com/uploads/banana/banana_PNG842.png",
                  productName: "Banana", onTap: (){}),

              SingleProducts(productImage: "https://pngimg.com/uploads/mango/mango_PNG9183.png",
                  productName: "Mango", onTap: (){}),
              SingleProducts(productImage: "https://pngimg.com/uploads/grape/grape_PNG2996.png",
                  productName: "Grapes", onTap: (){})
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildVegetableProduct() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Vegetables',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              'View All',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProducts(
                productImage: "https://pngimg.com/uploads/tomato/tomato_PNG12560.png",
                productName: "Tomato",
                onTap: () {},
              ),
              SingleProducts(
                productImage: "https://www.pngarts.com/files/1/Cabbage-PNG-Free-Download.png",
                productName: "Cabbage",
                onTap: () {},
              ),
              SingleProducts(
                productImage: "https://pngimg.com/uploads/broccoli/broccoli_PNG72932.png",
                productName: "Broccoli",
                onTap: () {},
              ),
              SingleProducts(
                productImage: "https://pngimg.com/uploads/pepper/pepper_PNG3261.png",
                productName: "Capsicum",
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildRootVegetableProduct() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Root Vegetables',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              'View All',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProducts(
                productImage: "https://pngimg.com/uploads/carrot/carrot_PNG4985.png",
                productName: "Carrot",
                onTap: () {},
              ),
              SingleProducts(
                productImage: "https://pngimg.com/uploads/potato/potato_PNG7089.png",
                productName: "Potato",
                onTap: () {},
              ),
              SingleProducts(
                productImage: "https://www.pngall.com/wp-content/uploads/2016/03/Onion-PNG-File.png",
                productName: "Onion",
                onTap: () {},
              ),
              SingleProducts(
                productImage: "https://wallpapers.com/images/featured/garlic-png-k9gli6gidj3p1439.jpg",
                productName: "Garlic",
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Home", style: TextStyle(color: Colors.black)),
        backgroundColor: primaryColor,
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search, color: Colors.black, size: 18),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 18,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://thumbs.dreamstime.com/b/fresh-vegetables-water-splash-dark-background-vibrant-mix-tomatoes-bell-peppers-leafy-greens-splashing-369525995.jpg?w=992',
                    ),
                  ),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
        
                              child: Container(
                                height: 50,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(32),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "vegi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(5, 5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    '30% off',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(5, 5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    'On all vegetables products',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(5, 5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
              SizedBox(height: 10),
              _builtHerbProduct(),
              SizedBox(height: 10),
              _builtFruitProduct(),
              SizedBox(height: 10),
              _buildVegetableProduct(),
              SizedBox(height: 10),
              _buildRootVegetableProduct(),

        
            ],
          ),
        ),
      ),
    );
  }
}
