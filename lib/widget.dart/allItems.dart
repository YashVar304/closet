import 'package:closet/models/closet_item.dart';
import 'package:flutter/material.dart';

class AllItems extends StatefulWidget {
  final ClosetItem item;
  const AllItems({super.key, required this.item});

  @override
  State<AllItems> createState() => _AllItemsState();
}

class _AllItemsState extends State<AllItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey.withOpacity(0.1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.item.type,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(widget.item.coverImage, fit: BoxFit.contain),
          )
        ],
      ),
    );
  }
}
