import 'package:flutter/material.dart';

class SingleProducts extends StatelessWidget {
  final String productImage;
  final String productName;
  final VoidCallback onTap;
  const SingleProducts({
    super.key,
    required this.productImage,
    required this.productName,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 240,
        width: 180,
        decoration: BoxDecoration(
          color: Color(0xffd9dad9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 1, left: 1),
                child: Image(
                  image: NetworkImage(productImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '50\$/50 Gram',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: MaterialButton(
                              child: Row(
                                children: [
                                  Text(
                                    '50 Gram',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 9,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Colors.black,
                                    size: 12,
                                  ),
                                ],
                              ),
                              onPressed: (){},
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            height: 30,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: MaterialButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Icon(
                                    Icons.remove,
                                    size: 15,
                                    color: Color(0xffd0b84c),
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(color: Color(0xffd0b84c)),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 15,
                                    color: Color(0xffd0b84c),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
