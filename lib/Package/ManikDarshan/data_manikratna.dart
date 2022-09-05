import 'package:flutter/cupertino.dart';

class Data {
  int? id;
  String? link;
  Guid? title;
  String? apiFeatureImage;
  String? api_author_name;

  Data(
      {this.id,
      this.link,
      this.title,
      this.apiFeatureImage,
      this.api_author_name});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    link = json['link'];
    title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
    apiFeatureImage = json['jetpack_featured_media_url'];
    api_author_name = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data1 = new Map<String, dynamic>();
    data1['id'] = this.id;
    data1['link'] = this.link;
    if (this.title != null) {
      data1['title'] = this.title!.toJson();
    }
    data1['jetpack_featured_media_url'] = this.apiFeatureImage;
    data1['date'] = this.api_author_name;
    return data1;
  }
}

class Guid {
  String? rendered;

  Guid({this.rendered});

  Guid.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rendered'] = this.rendered;
    return data;
  }
}
