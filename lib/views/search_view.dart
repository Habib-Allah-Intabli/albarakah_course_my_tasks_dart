import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Search',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26,
              color: Color(0xff1A1A1A),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.mic_rounded),
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
          SizedBox(height: 150),
          Icon(Icons.search, size: 100, color: Color(0xffB3B3B3)),
          Text(
            'No Results Found!',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(
            width: 252,
            child: Text(
              'Try a similar word or something more general.',
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
    );
  }
}
