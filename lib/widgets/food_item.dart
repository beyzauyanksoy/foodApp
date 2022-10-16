import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    required this.point,
  }) : super(key: key);

  final String imageUrl, title, description;
  final double price, point;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Container(
        height: 96.95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.39),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 13.57,
              offset: Offset(0, 2.91),
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(19.39),
              child: Image.asset(
                imageUrl,
                width: 96.95,
                height: 96.95,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 7.76, left: 12.6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Color(0xff010e16),
                            fontSize: 13.57,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffFFD600),
                            ),
                            Text(
                              "$point",
                              style: TextStyle(
                                color: Color(0xffb3b3b3),
                                fontSize: 15.51,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff9b9b9b),
                        fontSize: 11.63,
                      ),
                    ),
                    Text(
                      "\$ $price",
                      style: TextStyle(
                        color: Color(0xff010e16),
                        fontSize: 16.48,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(0.2),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Icon(
                    Icons.remove,
                    size: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "1",
                    style: TextStyle(
                      color: Color(0xff010e16),
                      fontSize: 18.36,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 7.7),
                  child: Container(
                    padding: EdgeInsets.all(0.2),
                    decoration: BoxDecoration(border: Border.all()),
                    child: Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
