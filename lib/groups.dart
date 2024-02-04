import 'package:closet/models/my_groups.dart';
import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  const Groups({super.key});

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.redAccent)),
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.redAccent),
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 255, 163, 163)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      color: Colors.redAccent,
                    ),
                    Text("Create a Group")
                  ],
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: myGroup.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin:
                      const EdgeInsets.only(bottom: 10, left: 15, right: 15),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          blurStyle: BlurStyle.normal,
                        )
                      ],
                      color: const Color.fromARGB(255, 255, 163, 163)),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage(myGroup[index].Group_Dp)),
                    title: Text(
                      myGroup[index].Group_name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    horizontalTitleGap: 25,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
