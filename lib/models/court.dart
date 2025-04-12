class Court {
  final int id;
  final String name;
  final String location;
  final int courtTypeId;
  final int sportId;
  final int createdBy;

  Court({
    required this.id,
    required this.name,
    required this.location,
    required this.courtTypeId,
    required this.sportId,
    required this.createdBy,
  });
}
