import 'package:flutter/material.dart';
import 'package:test/models/messanger_model.dart';


class CircleImagewidget extends StatelessWidget {
  const CircleImagewidget({Key? key, required this.messangerModel}) : super(key: key);
final MessangerModel  messangerModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlBLORxmuwMNWRDP-AHNGnLl9fO-vaHpr1iA&usqp=CAU'),
          radius: 30,
          child: Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.green,

            ),
          ),
        ),
        Text(messangerModel.title,style: TextStyle(color: Colors.white),)
      ],
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key, required this.messangerModel}) : super(key: key);
  final MessangerModel  messangerModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlBLORxmuwMNWRDP-AHNGnLl9fO-vaHpr1iA&usqp=CAU'),
          radius: 30,
          child: Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.green,

            ),
          ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(messangerModel.title,style: TextStyle(color: Colors.white),),
            Text(messangerModel.Message,style: TextStyle(color: Colors.white),),
          ],

        ),
        Expanded(child: SizedBox()),
        Text('11:11 PM',style: TextStyle(color: Colors.grey),),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
