import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Home",
        style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffd6b738),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search,color: Colors.black,size: 18,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shopping_bag_outlined,color: Colors.black,size: 18,),
            ),
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://thumbs.dreamstime.com/b/fresh-vegetables-water-splash-dark-background-vibrant-mix-tomatoes-bell-peppers-leafy-greens-splashing-369525995.jpg?w=992'),
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
                        top:0,
                        left: 0,

                        child: Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffd6b738),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(32),
                                bottomLeft: Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text("vegi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              shadows: [BoxShadow(
                                color: Colors.green,
                                blurRadius: 10,
                                offset: Offset(5,5),
                              )]
                            ),),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('30% off',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              shadows: [BoxShadow(
                                color: Colors.green,
                                blurRadius: 10,
                                offset: Offset(5,5),
                              )]
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text('On all vegetables products',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    shadows: [BoxShadow(
                                      color: Colors.green,
                                      blurRadius: 10,
                                      offset: Offset(5,5),
                                    )]
                                )),
                          )
                        ],
                      ),


                      ]
                  ),
                  )
                  ),
                  Expanded(child: Container(),)

                  ]
              ),
            ),
            SizedBox(height: 20,),
        ]
        ),
      )
    );
  }
}
