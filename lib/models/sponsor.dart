class SponsorModel {
  String id;
  String sponsorName;
  String contactInformation;
  List<String> sponsoredIds;
  String advertisingContent;

  SponsorModel({
    required this.id,
    required this.sponsorName,
    required this.contactInformation,
    required this.sponsoredIds,
    required this.advertisingContent,
  });
}
