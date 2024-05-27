class EventModel {
  String title;
  String description;
  String location;
  DateTime date;
  String? image;

  EventModel({
    required this.title,
    required this.description,
    required this.location,
    required this.date,
    this.image,
  });

  // TODO: Implement fromJSON
  EventModel.fromMap(Map<String, dynamic> map)
      : title = map['title'] as String,
        description = map['description'] as String,
        location = map['location'] as String,
        date = DateTime.parse(map['date'] as String),
        image = map['image'] as String?;
}
