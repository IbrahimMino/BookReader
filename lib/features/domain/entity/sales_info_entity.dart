class SalesInfoEntity {
  String? country;
  String? saleability;
  bool? isEbook;
  String? buyLink;

  SalesInfoEntity({this.country, this.saleability, this.isEbook, this.buyLink});

  SalesInfoEntity.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    buyLink = json['buyLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['saleability'] = this.saleability;
    data['isEbook'] = this.isEbook;
    data['buyLink'] = this.buyLink;
    return data;
  }
}