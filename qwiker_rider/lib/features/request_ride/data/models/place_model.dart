import 'package:qwiker_rider/features/request_ride/data/models/geometry_model.dart';

class PlaceModel {
  final String shortName;
  String? longName;
  final String placeId;
  final Geometry geometry;

  PlaceModel({
    required this.geometry,
    required this.shortName,
    required this.placeId,
    this.longName,
  });

  factory PlaceModel.fromJson(Map<String, dynamic> place) {
    return PlaceModel(
      shortName: place["name"],
      placeId: place["place_id"],
      longName: place["formatted_address"],
      geometry: Geometry.fromJson(place["geometry"]),
    );
  }
}
