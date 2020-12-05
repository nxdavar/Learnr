class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl: "https://scontent-dfw5-1.xx.fbcdn.net/v/t1.15752-0/p280x280/128687479_2860104237606373_1210815728475186783"
          "_n.jpg?_nc_cat=103&ccb=2&_nc_sid=ae9488&_nc_ohc=OAWCsznd7ksAX9kF63k&_nc_ht=scontent-dfw5-1.xx&tp=6&oh=00d2cfef2"
          "ffd2f3e70b3b82120a45075&oe=5FE9E60B",
      name: "Neal Davar",
      datetime: "8:18 pm",
      message: "7 tomorrow works great for me!",
    ),
    ChatModel(
      avatarUrl: "https://scontent-dfw5-1.xx.fbcdn.net/v/t1.15752-0/p280x280/128797483_423294492161746_1550795826213080806"
          "_n.png?_nc_cat=111&ccb=2&_nc_sid=ae9488&_nc_ohc=upBRbFodsGEAX8LKMn3&_nc_ht=scontent-dfw5-1.xx&oh=8a9c5111e4b8b"
          "ca1daab4e2a4417dd36&oe=5FECE639",
      name: "Ashley Hsiung",
      datetime: "6:10 pm",
      message: "When do you want to study?",
    ),
    ChatModel(
      avatarUrl: "https://scontent.xx.fbcdn.net/v/t1.15752-0/p280x280/128066228_294579698548102_7282697669669788755_n.jpg?_nc_cat=105&ccb=2&_nc_sid=ae9488&_nc_ohc=5slonc_UU3kAX9lrDI4&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&tp=6&oh=0d76ff3c60f682833c265fe5b6234194&oe=5FEC2BE0",
      name: "Samritha Palakollu",
      datetime: "4:12 pm",
      message: "Let's do Thursday night around 8!",
    ),
    ChatModel(
      avatarUrl: "https://cdn.stocksnap.io/img-thumbs/280h/photographer-picture_H7TWLXT9GR.jpg",
      name: "Otto Noah",
      datetime: "3:46 pm",
      message: "Hey, nice to meet you!",
    ),
    ChatModel(
      avatarUrl: "https://cdn.stocksnap.io/img-thumbs/280h/woman-hat_604BUL2SIU.jpg",
      name: "Kathryn Allen",
      datetime: "3:38 pm",
      message: "How are you doing?",
    ),
    ChatModel(
      avatarUrl: "https://cdn.stocksnap.io/img-thumbs/280h/portrait-girl_LGWI9MW3KR.jpg",
      name: "Holly Scott",
      datetime: "3:12 pm",
      message: "Hey!",
    ),
    ChatModel(
      avatarUrl: "https://cdn.stocksnap.io/img-thumbs/280h/woman-selfie_ANXZKJDWFO.jpg",
      name: "Wendy Dean",
      datetime: "2:59 pm",
      message: "Hey!",
    ),
    ChatModel(
      avatarUrl: "https://cdn.stocksnap.io/img-thumbs/280h/push-ups_ERPCKWGZRL.jpg",
      name: "Emmett Griffin",
      datetime: "2:49 pm",
      message: "Are you free tomorrow?",
    ),
    ChatModel(
      avatarUrl: "https://cdn.stocksnap.io/img-thumbs/280h/male-running_YPBQLGZWQM.jpg",
      name: "Christian Rivers",
      datetime: "2:37 pm",
      message: "Hey! When do you think we could study for our exam?",
    ),
  ];
}