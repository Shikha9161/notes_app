
class DataModel {
  String? title;
  String? dis;
  String? date;

  DataModel({this.title, this.dis, this.date});

  DataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    dis = json['dis'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = title;
    data['dis'] = dis;
    data['date'] = date;
    return data;
  }
}

