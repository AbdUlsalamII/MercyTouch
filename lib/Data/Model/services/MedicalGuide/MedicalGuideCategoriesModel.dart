class MedicalGuideCategoriesModel {
  int? mGuidCatId;
  String? mGuidCatName;
  String? mGuidCatNameAr;
  String? mGuidCatDatatime;

  MedicalGuideCategoriesModel(
      {this.mGuidCatId,
      this.mGuidCatName,
      this.mGuidCatNameAr,
      this.mGuidCatDatatime});

  MedicalGuideCategoriesModel.fromJson(Map<String, dynamic> json) {
    mGuidCatId = json['M_guid_cat_id'];
    mGuidCatName = json['M_guid_cat_name'];
    mGuidCatNameAr = json['M_guid_cat_name_ar'];
    mGuidCatDatatime = json['M_guid_cat_datatime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['M_guid_cat_id'] = this.mGuidCatId;
    data['M_guid_cat_name'] = this.mGuidCatName;
    data['M_guid_cat_name_ar'] = this.mGuidCatNameAr;
    data['M_guid_cat_datatime'] = this.mGuidCatDatatime;
    return data;
  }
}