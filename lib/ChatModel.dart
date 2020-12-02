class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl: "https://scontent-dfw5-1.xx.fbcdn.net/v/t1.15752-0/p280x280/128797483_423294492161746_1550795826213080806_n.png?_nc_cat=111&ccb=2&_nc_sid=ae9488&_nc_ohc=upBRbFodsGEAX8LKMn3&_nc_ht=scontent-dfw5-1.xx&oh=8a9c5111e4b8bca1daab4e2a4417dd36&oe=5FECE639",
      name: "Ashley Hsiung",
      datetime: "8:18 pm",
      message: "When do you want to study?",
    ),
    ChatModel(
      avatarUrl: "https://scontent-dfw5-1.xx.fbcdn.net/v/t1.15752-0/p280x280/128687479_2860104237606373_1210815728475186783_n.jpg?_nc_cat=103&ccb=2&_nc_sid=ae9488&_nc_ohc=OAWCsznd7ksAX9kF63k&_nc_ht=scontent-dfw5-1.xx&tp=6&oh=00d2cfef2ffd2f3e70b3b82120a45075&oe=5FE9E60B",
      name: "Neal Davar",
      datetime: "6:12 pm",
      message: "7 tomorrow works great for me!",
    ),
    ChatModel(
      avatarUrl: "https://scontent.xx.fbcdn.net/v/t1.15752-0/p280x280/128066228_294579698548102_7282697669669788755_n.jpg?_nc_cat=105&ccb=2&_nc_sid=ae9488&_nc_ohc=5slonc_UU3kAX9lrDI4&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&tp=6&oh=0d76ff3c60f682833c265fe5b6234194&oe=5FEC2BE0",
      name: "Samritha Palakollu",
      datetime: "4:12 pm",
      message: "Let's do Thursday night around 8!",
    ),
    ChatModel(
      avatarUrl: "https://scontent.xx.fbcdn.net/v/t1.15752-0/p280x280/129501635_2728145750834165_8469153588694919158_n.jpg?_nc_cat=100&ccb=2&_nc_sid=ae9488&_nc_ohc=0DD60QzWBVAAX8TBP-k&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&tp=6&oh=e1abc8e9e4d502def1325eb6a036951a&oe=5FEE6C4B",
      name: "Ritika Palacharla",
      datetime: "7:53 pm",
      message: "Yeah, sounds good!",
    ),

  ];
}