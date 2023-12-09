class PostModel {
  final String image;
  final String title;
  final User user;

  PostModel({required this.image, required this.title, required this.user});
}

class User {
  final String userName;
  final String image;

  User({required this.userName, required this.image});
}

List<PostModel> posts = [
  PostModel(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT46yCcuLEo_OZUIR-VpfgdcAKf839-sB5Ayw&usqp=CAU',
    title: 'Messi',
    user: User(
      userName: 'Messi',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT46yCcuLEo_OZUIR-VpfgdcAKf839-sB5Ayw&usqp=CAU',
    ),
  ),
  PostModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRarkUDF9hr88MQGhZrOw3XI6OVtFs27MtMSQ&usqp=CAU',
      title: 'kevin de bruyne',
      user: User(userName: 'kevin de bruyne', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRarkUDF9hr88MQGhZrOw3XI6OVtFs27MtMSQ&usqp=CAU')),
  PostModel(
      image: 'https://www.fcbarcelonanoticias.com/uploads/s1/13/53/62/4/pedri-lesionado-con-el-barc-a.jpeg',
      title: 'pedri',
      user: User(userName: 'pedri', image: 'https://www.fcbarcelonanoticias.com/uploads/s1/13/53/62/4/pedri-lesionado-con-el-barc-a.jpeg')),
  ];
