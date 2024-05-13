// To parse this JSON data, do
//
//     final manhwa = manhwaFromJson(jsonString);

import 'dart:convert';

List<Manhwa> manhwaFromJson(String str) => List<Manhwa>.from(json.decode(str).map((x) => Manhwa.fromJson(x)));

String manhwaToJson(List<Manhwa> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Manhwa {
    Model model;
    int pk;
    Fields fields;

    Manhwa({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Manhwa.fromJson(Map<String, dynamic> json) => Manhwa(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String title;
    int chapter;
    String genre;
    String sinopsis;
    double rating;

    Fields({
        required this.user,
        required this.title,
        required this.chapter,
        required this.genre,
        required this.sinopsis,
        required this.rating,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        title: json["title"],
        chapter: json["chapter"],
        genre: json["genre"],
        sinopsis: json["sinopsis"],
        rating: json["rating"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "title": title,
        "chapter": chapter,
        "genre": genre,
        "sinopsis": sinopsis,
        "rating": rating,
    };
}

enum Model {
    MAIN_MANHWA
}

final modelValues = EnumValues({
    "main.manhwa": Model.MAIN_MANHWA
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
