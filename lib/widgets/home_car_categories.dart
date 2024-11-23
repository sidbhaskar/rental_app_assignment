import 'package:flutter/material.dart';

class HomeCarCategories extends StatelessWidget {
  final String carName;
  final String carLocation;
  final int seatCount;
  final int price;
  final String imageURL;
  const HomeCarCategories({
    super.key,
    required this.carName,
    required this.carLocation,
    required this.seatCount,
    required this.price,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(),
      ),
      child: Column(
        children: [
          Container(
            height: 130,
            // color: Colors.black26,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.network(
                imageURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Divider(
            height: 0,
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  carName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.black38,
                  ),
                  Text(
                    carLocation,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$seatCount seats',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '₹$price/hr',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
