class Booking {
  final int id;
  final int userId;
  final int courtId;
  final DateTime date;
  final int durationMinutes;
  final String status; // 'pending', 'confirmed', 'cancelled'

  Booking({
    required this.id,
    required this.userId,
    required this.courtId,
    required this.date,
    required this.durationMinutes,
    required this.status,
  });
}
