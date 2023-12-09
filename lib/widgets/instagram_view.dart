import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test/models/post_model.dart';

class InstagrameWidget extends StatelessWidget {
  const InstagrameWidget({Key? key, required this.postModel}) : super(key: key);
  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  postModel.user.image,
                ),
              ),
            ),
            Expanded(child: Text(postModel.user.userName)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined))
          ],
        ),
        Image.network(
          width: double.infinity,
            fit:BoxFit.cover,
            postModel.image),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(FontAwesomeIcons.comment),
                  ),
                  Icon(Icons.send),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 3.5,
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 3,
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 3,
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 2.5,
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 2,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border,
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CircleAvatar(
                radius: 10,
                child: Image.network(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt74c3d1cb86681612/610f980527642e34d2f53bd9/103331247fc6838bbea182041dcccc7184392839.jpg?auto=webp&format=pjpg&width=3840&quality=60',
                ),
              ),
            ),
            Text('Liked by '),
            Text(
              'flutter.developer ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('and '),
            Text(
              '44 others',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
              'lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem .....'),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'View 1 Comment ',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
