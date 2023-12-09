import 'package:flutter/material.dart';
import 'package:test/models/messanger_model.dart';

import '../widgets/messanger_screen_widgets.dart';

class MessangerScreen extends StatelessWidget {
  const MessangerScreen({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlBLORxmuwMNWRDP-AHNGnLl9fO-vaHpr1iA&usqp=CAU'),
          ),
        ),
        title: Text(
          'Chats',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          CircleAvatar(
              backgroundColor: Colors.grey,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ))),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
              backgroundColor: Colors.grey,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_to_photos,
                    color: Colors.white,
                  ))),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      label: Text('Search'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CircleImagewidget(messangerModel: Messages[index]),
                  itemCount: Messages.length,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                ),
              ),
              SizedBox(
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ChatWidget(messangerModel: Messages[index]),
                  itemCount: Messages.length,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
