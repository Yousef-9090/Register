



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/Share/componants.dart';

final List<ListItem> listItems = [
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),
  ListItem(title: 'Item ',
      urlImage: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F08%2FUn1.svg%2F800px-Un1.svg.png&imgrefurl=https%3A%2F%2Fen.wiktionary.org%2Fwiki%2F1&tbnid=K4jwhlm_SI_LPM&vet=12ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ..i&docid=pxfop0EMkoSdOM&w=800&h=800&q=%201&hl=ar&ved=2ahUKEwjI-YC237v9AhWYmicCHe5nAVQQMygGegUIARCeAQ'
  ),

];

class ListItemWidget extends StatelessWidget {
  final ListItem item;
  final Animation <double> animation ;
  final VoidCallback? onClicked ;


  const ListItemWidget ({
    required this.animation,
    required this.item,
    required this.onClicked,
    Key? Key,
}) : super (key :Key);
  Widget build(BuildContext context) => SizeTransition(
    key: ValueKey(item.urlImage),
    sizeFactor: animation,
      child: buildItem());

  Widget buildItem() => Container(
    margin: EdgeInsets.all(9),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: ListTile(
      contentPadding : EdgeInsets.all(12),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(item.urlImage),
      ),
      title: Text(
        item.title,
        style: TextStyle(fontSize: 20,color: Colors.black),
      ),
      trailing: IconButton(
       icon: Icon(Icons.delete_outline),color: Colors.black,
        onPressed:onClicked,
      ),
    ),
  );
}







