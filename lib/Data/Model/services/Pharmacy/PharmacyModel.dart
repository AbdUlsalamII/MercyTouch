class PharmacyModel {
  int? drugsId;
  String? drugsName;
  String? drugsNameAr;
  String? drugsDesc;
  String? drugsDescAr;
  String? drugsImage;
  int? drugsCapacity;
  String? drugsType;
  int? drugsCount;
  int? drugsActive;
  int? drugsCost;
  String? drugsProductionDate;
  String? drugsExpirationDate;
  int? drugsCat;
  int? drugsCatId;
  String? drugsCatName;
  String? drugsCatNameAr;
  String? drugsCatDatatime;

  PharmacyModel(
      {this.drugsId,
      this.drugsName,
      this.drugsNameAr,
      this.drugsDesc,
      this.drugsDescAr,
      this.drugsImage,
      this.drugsCapacity,
      this.drugsType,
      this.drugsCount,
      this.drugsActive,
      this.drugsCost,
      this.drugsProductionDate,
      this.drugsExpirationDate,
      this.drugsCat,
      this.drugsCatId,
      this.drugsCatName,
      this.drugsCatNameAr,
      this.drugsCatDatatime});

  PharmacyModel.fromJson(Map<String, dynamic> json) {
    drugsId = json['drugs_id'];
    drugsName = json['drugs_name'];
    drugsNameAr = json['drugs_name_ar'];
    drugsDesc = json['drugs_desc'];
    drugsDescAr = json['drugs_desc_ar'];
    drugsImage = json['drugs_image'];
    drugsCapacity = json['drugs_capacity'];
    drugsType = json['drugs_type'];
    drugsCount = json['drugs_count'];
    drugsActive = json['drugs_active'];
    drugsCost = json['drugs_cost'];
    drugsProductionDate = json['drugs_production_date'];
    drugsExpirationDate = json['drugs_expiration_date'];
    drugsCat = json['drugs_cat'];
    drugsCatId = json['drugs_cat_id'];
    drugsCatName = json['drugs_cat_name'];
    drugsCatNameAr = json['drugs_cat_name_ar'];
    drugsCatDatatime = json['drugs_cat_datatime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['drugs_id'] = this.drugsId;
    data['drugs_name'] = this.drugsName;
    data['drugs_name_ar'] = this.drugsNameAr;
    data['drugs_desc'] = this.drugsDesc;
    data['drugs_desc_ar'] = this.drugsDescAr;
    data['drugs_image'] = this.drugsImage;
    data['drugs_capacity'] = this.drugsCapacity;
    data['drugs_type'] = this.drugsType;
    data['drugs_count'] = this.drugsCount;
    data['drugs_active'] = this.drugsActive;
    data['drugs_cost'] = this.drugsCost;
    data['drugs_production_date'] = this.drugsProductionDate;
    data['drugs_expiration_date'] = this.drugsExpirationDate;
    data['drugs_cat'] = this.drugsCat;
    data['drugs_cat_id'] = this.drugsCatId;
    data['drugs_cat_name'] = this.drugsCatName;
    data['drugs_cat_name_ar'] = this.drugsCatNameAr;
    data['drugs_cat_datatime'] = this.drugsCatDatatime;
    return data;
  }
}