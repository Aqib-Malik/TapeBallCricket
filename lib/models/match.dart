class MatchModel {
  String id;
  List<String> teamIds;
  String venue;
  DateTime date;
  DateTime time;
  String result;
  String highlights;

  MatchModel({
    required this.id,
    required this.teamIds,
    required this.venue,
    required this.date,
    required this.time,
    required this.result,
    required this.highlights,
  });
}
