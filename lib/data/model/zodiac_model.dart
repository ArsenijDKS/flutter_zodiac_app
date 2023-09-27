class ZodiacModel {
  String? color;
  String? compatibility;
  String? currentDate;
  String? dateRange;
  String? description;
  String? luckyNumber;
  String? luckyTime;
  String? mood;

  ZodiacModel(
      {this.color,
      this.compatibility,
      this.currentDate,
      this.dateRange,
      this.description,
      this.luckyNumber,
      this.luckyTime,
      this.mood});

  ZodiacModel.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    compatibility = json['compatibility'];
    currentDate = json['current_date'];
    dateRange = json['date_range'];
    description = json['description'];
    luckyNumber = json['lucky_number'];
    luckyTime = json['lucky_time'];
    mood = json['mood'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['compatibility'] = this.compatibility;
    data['current_date'] = this.currentDate;
    data['date_range'] = this.dateRange;
    data['description'] = this.description;
    data['lucky_number'] = this.luckyNumber;
    data['lucky_time'] = this.luckyTime;
    data['mood'] = this.mood;
    return data;
  }
}
