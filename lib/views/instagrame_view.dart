import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test/models/post_model.dart';
import 'package:test/widgets/instagram_view.dart';

class InstagrameView extends StatelessWidget {
  const InstagrameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Instagram',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Caveat',
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(FontAwesomeIcons.squarePlus)),
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
                Positioned(
                  top: 14,
                  right: 10,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                  ),
                )
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.facebookMessenger),
                  iconSize: 22,
                ),
                Positioned(
                  top: 10,
                  right: 8,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.red,
                    child: Text(
                      '9',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        body: ListView.separated(itemBuilder: (context, index) {
          return InstagrameWidget(postModel: posts[index],);
        }, separatorBuilder: (context, index) {
         return SizedBox(height: 10,);
        }, itemCount: posts.length),);
  }
}
