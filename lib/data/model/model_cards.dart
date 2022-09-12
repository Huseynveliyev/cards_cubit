import 'package:cards_cubit/data/model/model_card.dart';

class CardsModel {
  CardsModel({
    required this.status,
    required this.code,
    required this.total,
    required this.data,
  });

  String status;
  int code;
  int total;
  List<CardModel> data;

  factory CardsModel.fromJson(Map<String, dynamic> json) => CardsModel(
        status: json["status"],
        code: json["code"],
        total: json["total"],
        data: List<CardModel>.from(
            json["data"].map((x) => CardModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "total": total,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
