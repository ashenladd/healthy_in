// To parse this JSON data, do
//
//     final webinarResponse = webinarResponseFromJson(jsonString);

import 'dart:convert';

WebinarResponse webinarResponseFromJson(String str) =>
    WebinarResponse.fromJson(json.decode(str));

String webinarResponseToJson(WebinarResponse data) =>
    json.encode(data.toJson());

class WebinarResponse {
  WebinarResponse({
    required this.metadata,
    required this.meetings,
  });

  Metadata metadata;
  List<Webinar> meetings;

  factory WebinarResponse.fromJson(Map<String, dynamic> json) =>
      WebinarResponse(
        metadata: Metadata.fromJson(json["metadata"]),
        meetings: List<Webinar>.from(
            json["meetings"].map((x) => Webinar.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "metadata": metadata.toJson(),
        "meetings": List<dynamic>.from(meetings.map((x) => x.toJson())),
      };
}

class Webinar {
  Webinar({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.slots,
    required this.startAt,
    required this.endAt,
    required this.isPrivate,
    required this.creatorId,
  });

  String id;
  String title;
  String description;
  int price;
  int slots;
  DateTime startAt;
  DateTime endAt;
  bool isPrivate;
  String creatorId;

  factory Webinar.fromJson(Map<String, dynamic> json) => Webinar(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        slots: json["slots"],
        startAt: DateTime.parse(json["startAt"]),
        endAt: DateTime.parse(json["endAt"]),
        isPrivate: json["isPrivate"],
        creatorId: json["creatorId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "slots": slots,
        "startAt": startAt.toIso8601String(),
        "endAt": endAt.toIso8601String(),
        "isPrivate": isPrivate,
        "creatorId": creatorId,
      };
}

class Metadata {
  Metadata({
    required this.page,
    required this.size,
    required this.total,
    required this.totalPage,
  });

  int page;
  int size;
  int total;
  int totalPage;

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        page: json["page"],
        size: json["size"],
        total: json["total"],
        totalPage: json["totalPage"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "size": size,
        "total": total,
        "totalPage": totalPage,
      };
}
