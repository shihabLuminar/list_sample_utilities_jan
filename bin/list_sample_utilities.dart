void main() {
  const List<Map<String, dynamic>> storyList = [
    {
      "userName": "user1",
      "proPic":
          "https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=600",
      "isLive": true,
    },
    {
      "userName": "user2",
      "proPic":
          "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600",
      "isLive": false,
    },
    {
      "userName": "user3",
      "proPic":
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
      "isLive": true,
    },
  ];

  //#1

  List<StoryModel> modelList = List.generate(
      storyList.length,
      (index) => StoryModel(
          username: storyList[index]["userName"],
          proPic: storyList[index]["proPic"],
          isLive: storyList[index]["isLive"]));

  //2
  List<StoryModel> modelList2 = storyList
      .map((element) => StoryModel(
            username: element["userName"],
            proPic: element["proPic"],
            isLive: element["isLive"],
          ))
      .toList();

  print(modelList[0].username);
  print(modelList2[0].username);
}

class StoryModel {
  String username;
  String proPic;
  bool isLive;

  StoryModel({
    required this.username,
    required this.proPic,
    required this.isLive,
  });
}
