class Event {
  final int id;
  final int organizationId;
  final String title;
  final String description;
  final DateTime eventDate;
  final String location;

  Event({
    required this.id,
    required this.organizationId,
    required this.title,
    required this.description,
    required this.eventDate,
    required this.location,
  });
}
