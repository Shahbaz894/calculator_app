import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<int> isSelected=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Screen'),

      ),
      body:  Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: 100,
              itemBuilder: (context,index){
              return  ListTile(
                onTap: (){
                  setState(() {
                   isSelected.add(index);
                   print(isSelected);
                  });
                },
                title: const Text('favorite'),
                trailing:    Icon(
                  isSelected.contains(index) ? Icons.favorite : Icons.favorite_border,
                  color: isSelected.contains(index) ? Colors.red : Colors.grey,
                )

              );
              }),
        )

      ],),
    );
  }
}
