class ContentModel {
  String id;
  String type;
  String title;
  String description;
  String content;
  DateTime timestamp;
  String userId;

  ContentModel({
    required this.id,
    required this.type,
    required this.title,
    required this.description,
    required this.content,
    required this.timestamp,
    required this.userId,
  });
}
