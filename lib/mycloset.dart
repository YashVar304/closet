import 'package:closet/models/my_closet.dart';
import 'package:flutter/material.dart';
import 'package:closet/widget.dart/allItems.dart';

class MyCloset extends StatelessWidget {
  const MyCloset({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: screenHeight * 0.35,
          width: screenWidth,
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('img/yash.jpg'),
                    radius: screenWidth > screenHeight
                        ? screenHeight * 0.15
                        : screenWidth * 0.15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Yash Varshney",
                    style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width * 0.05),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "YashVar304",
                    style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width * 0.04),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.sizeOf(context).height * 0.05,
                    child: Text(
                      "My Closet",
                      style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 163, 163),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    height: MediaQuery.sizeOf(context).width * 0.3,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            size: 40,
                            Icons.add_box_outlined,
                            color: Colors.redAccent,
                          ),
                          Text("Add New"),
                        ]),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: _buildAllItems(),
          height: MediaQuery.of(context).size.height * 0.55,
        )
      ],
    );
  }

  _buildAllItems() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (100 / 140),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final allItems = items[index];
          return AllItems(
            item: allItems,
          );
        },
      );
}
