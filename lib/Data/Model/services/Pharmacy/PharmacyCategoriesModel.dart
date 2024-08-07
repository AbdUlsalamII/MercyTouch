class PharmacyCategoriesModel {
  int? drugsCatId;
  String? drugsCatName;
  String? drugsCatNameAr;
  String? drugsCatDatatime;

  PharmacyCategoriesModel(
      {this.drugsCatId,
      this.drugsCatName,
      this.drugsCatNameAr,
      this.drugsCatDatatime});

  PharmacyCategoriesModel.fromJson(Map<String, dynamic> json) {
    drugsCatId = json['drugs_cat_id'];
    drugsCatName = json['drugs_cat_name'];
    drugsCatNameAr = json['drugs_cat_name_ar'];
    drugsCatDatatime = json['drugs_cat_datatime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['drugs_cat_id'] = this.drugsCatId;
    data['drugs_cat_name'] = this.drugsCatName;
    data['drugs_cat_name_ar'] = this.drugsCatNameAr;
    data['drugs_cat_datatime'] = this.drugsCatDatatime;
    return data;
  }
}
