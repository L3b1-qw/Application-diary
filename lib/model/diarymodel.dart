import 'package:cloud_firestore/cloud_firestore.dart';

class DiaryModel {
  String description;
  String mood;
  final String title;

  DiaryModel({required this.description, required this.mood, required this.title});

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'mood': mood,
      'title': title,
    };
  }

  factory DiaryModel.fromMap(Map<String, dynamic> map) {
    return DiaryModel(
      description: map['description'] ?? '',
      mood: map['mood'] ?? '',
      title: map['title'] ?? '',
    );
  }

  factory DiaryModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    return DiaryModel.fromMap(doc.data() as Map<String, dynamic>);
  }
}
