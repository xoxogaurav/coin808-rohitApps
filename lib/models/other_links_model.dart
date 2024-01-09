class OtherLinksModel {
  bool? status;
  String? message;
  List<Otherlinks>? otherlinks;
  List<BannerLinks>? bannerLinks;

  OtherLinksModel(
      {this.status, this.message, this.otherlinks, this.bannerLinks});

  OtherLinksModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['otherlinks'] != null) {
      otherlinks = <Otherlinks>[];
      json['otherlinks'].forEach((v) {
        otherlinks!.add(Otherlinks.fromJson(v));
      });
    }
    if (json['bannerLinks'] != null) {
      bannerLinks = <BannerLinks>[];
      json['bannerLinks'].forEach((v) {
        bannerLinks!.add(BannerLinks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (otherlinks != null) {
      data['otherlinks'] = otherlinks!.map((v) => v.toJson()).toList();
    }
    if (bannerLinks != null) {
      data['bannerLinks'] = bannerLinks!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Otherlinks {
  int? id;
  String? reason;
  String? link;
  String? createdAt;
  String? updatedAt;

  Otherlinks({this.id, this.reason, this.link, this.createdAt, this.updatedAt});

  Otherlinks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reason = json['Reason'];
    link = json['Link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['Reason'] = reason;
    data['Link'] = link;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class BannerLinks {
  int? id;
  String? reason;
  String? image;
  String? link;
  String? createdAt;
  String? updatedAt;

  BannerLinks(
      {this.id,
        this.reason,
        this.image,
        this.link,
        this.createdAt,
        this.updatedAt});

  BannerLinks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reason = json['Reason'];
    image = json['Image'];
    link = json['Link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['Reason'] = reason;
    data['Image'] = image;
    data['Link'] = link;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}