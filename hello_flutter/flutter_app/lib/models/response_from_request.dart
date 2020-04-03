import 'dart:convert';

import 'package:http/http.dart' as http;
import './network_request.dart';

/* after fetching data from the internet, we have to convert them to 
Dart OBJECTS. For easier working with the DATA*/

// TODO: Creating a PHOTO class.

class Photo {
  final int id;
  final String title;
  final String thumbnailUrl;
  // making a constructor
  Photo({this.id, this.title, this.thumbnailUrl});



  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'] as int,
      title: json['title'] as String,
      thumbnailUrl: json['thumbanailUrl'] as String,
    );
  }

}
  // TODO: Converting the response into a list of PHOTOS
  
  List<Photo> parsePhotos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  
    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

  Future<List<Photo>> fetchPhotos(http.Client client) async {
    final response = await client.get('https://jsonplaceholder.typicode.com/photo');

    return parsePhotos(response.body);
  }

  // TODO: Move this  work to separate isolate

//   Future<List<Photo>> fetchPhotos(http.Client client) async {
//   final response =
//       await client.get('https://jsonplaceholder.typicode.com/photos');

//   // Use the compute function to run parsePhotos in a separate isolate.
//   return compute(parsePhotos, response.body);
// }
