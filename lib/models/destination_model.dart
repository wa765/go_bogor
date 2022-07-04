import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  final String about;

  DestinationModel(
      {required this.id,
      this.name = '',
      this.city = '',
      this.imageUrl = '',
      this.rating = 0.0,
      this.about = ''});

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        imageUrl: json['imageUrl'],
        rating: json['rating'].toDouble(),
        about: json['about'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'city': city,
        'imageUrl': imageUrl,
        'rating': rating,
        'about': about
      };

  @override
  List<Object?> get props => [id, name, city, imageUrl, rating, about];
}
