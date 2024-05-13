class TeamModel {
  String id;
  String teamName;
  String ownerId;
  List<String> playerIds;
  List<String> tournamentHistory;
  String sponsorshipDetails;

  TeamModel({
    required this.id,
    required this.teamName,
    required this.ownerId,
    required this.playerIds,
    required this.tournamentHistory,
    required this.sponsorshipDetails,
  });
}
