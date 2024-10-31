import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xffD9D9D9).withOpacity(0.50),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: const Color(0xff3B3636).withOpacity(0.47),
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                Icons.search,
                color: const Color(0xff3B3636).withOpacity(0.47),
                size: 30,
              ),
            ),
            const Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search here...",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 9),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
