import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  String dropdownvalue = 'Filter';

  // List of items in our dropdown menu
  var items = [
    'Filter',
    'Colors',
    'Catagory',
    'Season',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discover"),
        backgroundColor: const Color.fromARGB(255, 255, 163, 163),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text("Suggested"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("Followers"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("Following"),
              onTap: () => Navigator.pop(context),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 15),
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 163, 163),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton(
                hint: Text("Filter"),
                dropdownColor:
                    const Color.fromARGB(255, 255, 163, 163), // Initial Value
                value: dropdownvalue,

                // Down Arrow Icon
                icon: SizedBox.shrink(),
                underline: Container(
                  height: 0,
                ),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide.none,
                            top: BorderSide.none,
                            bottom: BorderSide.none,
                            right: BorderSide(color: Colors.redAccent))),
                    padding: EdgeInsets.all(15),
                    child: Column(children: [
                      Container(
                        child: Icon(Icons.favorite_border_sharp),
                        alignment: Alignment.topRight,
                      ),
                      FittedBox(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("../img/yash.jpg"),
                          radius: 50,
                        ),
                      ),
                      Text("Name"),
                      Text("UserName")
                    ]),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("Link To Brand"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
