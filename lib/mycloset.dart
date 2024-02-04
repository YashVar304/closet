import 'package:closet/models/my_closet.dart';
import 'package:flutter/material.dart';
import 'package:closet/widget.dart/allItems.dart';

class MyCloset extends StatelessWidget {
  const MyCloset({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.4,
            width: screenWidth,
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('img/yash.jpg'),
                      radius: screenWidth < screenHeight
                          ? screenHeight * 0.08
                          : screenWidth * 0.08,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yash Varshney",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey[350]),
                                child: Text("@yashvar304"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
            height: MediaQuery.of(context).size.height * 0.4,
          )
        ],
      ),
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
