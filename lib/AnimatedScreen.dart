import 'package:flutter/material.dart';

import 'Share/List_item.dart';
import 'Share/componants.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  final listKey = GlobalKey<AnimatedListState>();
  final List<ListItem> items = List.from(listItems);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Animated List'),
        centerTitle: true,
      ),
      body: AnimatedList(
        key: listKey,
        itemBuilder: (context, index, animation) => ListItemWidget(
          item: items[index],
          animation: animation,
          onClicked: () => remveItem(index),
        ),
        initialItemCount: items.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }



 void insertItem ( ){
     final newIndex = 1 ;
     final newItem =(List.of(listItems)..shuffle()).first;

 items.insert( newIndex,newItem);
 listKey.currentState!.insertItem(newIndex,
   duration: Duration(milliseconds: 600),
 );
 }


void remveItem(int index) {
    final removedItem = items[index];
    items.remove(index);
    listKey.currentState!.removeItem(
      index,
      (context, animation) => ListItemWidget(
          animation: animation, item: removedItem, onClicked: () {}
      ),
      duration: Duration(milliseconds: 700)
    );
  }
}
