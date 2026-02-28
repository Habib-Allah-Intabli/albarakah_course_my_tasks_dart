import 'package:flutter/material.dart';

class SavedItemView extends StatelessWidget {
  const SavedItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Saved Items',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26,
              color: Color(0xff1A1A1A),
            ),)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite_border_outlined,
                size: 100,
                color: Color(0xffB3B3B3),
              ),
              Text(
                'No Saved Items!',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                width: 252,
                child: Text(
                  'You don’t have any saved items. Go to home and add some.',
                  style: TextStyle(
                    color: Color(0xff808080),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
