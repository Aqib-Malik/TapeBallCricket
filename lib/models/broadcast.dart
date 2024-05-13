class BroadcastModel {
  String id;
  String broadcasterName;
  String broadcasterId;
  String streamingLink;
  DateTime schedule;
  Map<String, dynamic> viewershipStatistics;

  BroadcastModel({
    required this.id,
    required this.broadcasterName,
    required this.broadcasterId,
    required this.streamingLink,
    required this.schedule,
    required this.viewershipStatistics,
  });
}
