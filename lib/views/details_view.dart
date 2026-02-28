import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Ditails')),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/product_details_image.png',
            width: 340,
            height: 360,
          ),
          Text(
            'Regular Fit Slogan',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Row(
                children: [
                  Text('4.0/5'),
                  Text(
                    '(45 reviews)',
                    style: TextStyle(color: Color(0xff808080)),
                  ),
                ],
              ),
            ],
          ),
          Text(
            'The name says it all, the right size slightly snugs\n the body leaving enough room for comfort in\n the sleeves and waist.',
            style: TextStyle(color: Color(0xff808080)),
          ),
          SizedBox(height: 10),
          Text(
            'Choose Size',
            style: TextStyle(
              color: Color(0xff1A1A1A),
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('S')),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('M')),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('L')),
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('price'),
                    Text(
                      '\$1090',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 240,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff1A1A1A),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.card_travel_sharp, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
