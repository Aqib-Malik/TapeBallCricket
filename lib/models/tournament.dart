class TournamentModel {
  String id;
  String tournamentName;
  String organizer;
  String location;
  DateTime startDate;
  DateTime endDate;
  List<String> matchIds;
  String prizeDetails;

  TournamentModel({
    required this.id,
    required this.tournamentName,
    required this.organizer,
    required this.location,
    required this.startDate,
    required this.endDate,
    required this.matchIds,
    required this.prizeDetails,
  });
}
