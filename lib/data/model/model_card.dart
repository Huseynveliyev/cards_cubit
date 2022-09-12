class CardModel {
  CardModel({
    required this.type,
    required this.number,
    required this.expiration,
    required this.owner,
  });

  String type;
  String number;
  String expiration;
  String owner;

  factory CardModel.fromJson(Map<String, dynamic> json) => CardModel(
        type: json["type"],
        number: json["number"],
        expiration: json["expiration"],
        owner: json["owner"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "number": number,
        "expiration": expiration,
        "owner": owner,
      };
  @override
  String toString() {
    return '$type- $number- $expiration- $owner';
  }
}
