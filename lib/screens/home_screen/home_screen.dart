import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget singleProducts(){
    return Container(
      margin: EdgeInsets.only(right: 10),
      height:240,
      width: 180,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image(image: NetworkImage('https://pngimg.com/d/basil_PNG10.png'),
                    fit: BoxFit.cover,),
                )
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fresh Basil',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text('50\$/50 Gram',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),),
                    Row(
                        children: [
                          Expanded(child: Container(
                            height: 30,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Colors.grey
                                )
                            ),
                            child: MaterialButton(
                              child: Row(
                                children: [
                                  Text('50 Gram',
                                    style: TextStyle(color: Colors.black,
                                      fontSize: 9,),),
                                  Icon(Icons.arrow_drop_down_outlined,color: Colors.black,
                                      size: 12)
                                ],

                              ),
                              onPressed: (){},
                            ),
                          )),
                          SizedBox(width: 5,),
                          Expanded(child: Container(
                            height: 30,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Colors.grey
                                )
                            ),
                            child: MaterialButton(
                              child: Row(


                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Icon(Icons.remove,
                                    size: 15,
                                    color: Color(0xffd0b84c),
                                  ),
                                  Text('1',
                                    style: TextStyle(color: Color(0xffd0b84c)),),
                                  Icon(Icons.add,
                                      size: 15,
                                      color: Color(0xffd0b84c)),
                                ],

                              ),
                              onPressed: (){},
                            ),
                          )),
                        ])


                  ]

              ),
            ))
          ]
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
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
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Herbs Seasonings',
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Text('View All',
                style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.grey),)
              ]
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),

                  singleProducts(),

                  singleProducts(),

                  singleProducts(),
              ]
            )
            )

        ]
        ),
      )
    );
  }
}
