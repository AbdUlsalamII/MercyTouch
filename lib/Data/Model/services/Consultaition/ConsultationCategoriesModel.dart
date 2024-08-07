class ConsultationCategoriesModel {
  int? doctorsCatId;
  String? doctorsCatName;
  String? doctorsCatNameAr;
  String? doctorsCatDatatime;

  ConsultationCategoriesModel(
      {this.doctorsCatId,
      this.doctorsCatName,
      this.doctorsCatNameAr,
      this.doctorsCatDatatime});

  ConsultationCategoriesModel.fromJson(Map<String, dynamic> json) {
    doctorsCatId = json['doctors_cat_id'];
    doctorsCatName = json['doctors_cat_name'];
    doctorsCatNameAr = json['doctors_cat_name_ar'];
    doctorsCatDatatime = json['doctors_cat_datatime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['doctors_cat_id'] = this.doctorsCatId;
    data['doctors_cat_name'] = this.doctorsCatName;
    data['doctors_cat_name_ar'] = this.doctorsCatNameAr;
    data['doctors_cat_datatime'] = this.doctorsCatDatatime;
    return data;
  }
}
