import 'package:flutter/material.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({super.key});


  Widget listTile(IconData icon, String title){
    return ListTile(
      leading: Icon(icon, size: 32,),
      title: Text(title,
        style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black45,
        ),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffd1ad17),
      child: ListView(
        children: [
          DrawerHeader(child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white54,
                radius: 43,
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 40,
                  backgroundImage: NetworkImage("https://s3.envato.com/files/328957910/vegi_thumb.png")),
                ),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome Guest',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                  SizedBox(height: 10,),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                        onPressed: (){},
                        child: Center(
                            child: Text("Login"))

                    ),
                  )
                ],
              )

            ],
          )),
          listTile(Icons.home_outlined, "Home"),
          listTile(Icons.shopping_bag_outlined, "Review Cart"),
          listTile(Icons.person_outline, "My Profile"),
          listTile(Icons.notifications_none_outlined, "Notification"),
          listTile(Icons.star_outline_outlined, "Rating & Review"),
          listTile(Icons.favorite_outline, "Wishlist"),
          listTile(Icons.contact_page_outlined, "Raise a Complaint"),
          listTile(Icons.format_quote_outlined, "FAQs"),

          Container(
            height: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                      children: [
                        Text("Call us"),
                        SizedBox(width: 10,),
                        Text("*2115646")
                      ]
                  ),
                  SizedBox(height: 5,),
                  Row(
                      children: [
                        Text("Mail us"),
                        SizedBox(width: 10,),
                        Text("ibudjaslfj@retry.com")
                      ]
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
