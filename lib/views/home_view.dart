import 'package:flutter/material.dart';
import 'package:task_22_full_design/views/details_view.dart';
import 'package:task_22_full_design/views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Discover')),
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: 260,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF9FAFB),
                      enabled: true,
                      hint: Row(
                        children: [
                          Icon(Icons.search, color: Color(0xff99A1AF)),
                          Text(
                            'Search Performs...',
                            style: TextStyle(color: Color(0xff99A1AF)),
                          ),
                        ],
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff99A1AF)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: FloatingActionButton(
                  heroTag: 'filter_button',
                  backgroundColor: Color(0xff1A1A1A),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchView()),
                    );
                  },
                  child: Icon(Icons.filter_alt_outlined, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: 4,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: 90,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    child: Center(child: Text('Tshirt')),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailsView();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 160,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/images/product_image.png',
                                width: 120,
                              ),
                            ),
                            Text('Regular Fit Slogan'),
                            Text('\$ 1,190'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: FloatingActionButton(
                          heroTag: 'favorite_button_$index',
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
