class MedicalGuideModel {
  int? mGuideElementsId;
  String? mGuideElementsName;
  String? mGuideElementsNameAr;
  int? mGuideElementsPhone;
  String? mGuideElementsSepcialization;
  String? mGuideElementsLocation;
  String? mGuideElementsHolidays;
  int? mGuidElementsCat;
  int? mGuidCatId;
  String? mGuidCatName;
  String? mGuidCatNameAr;
  String? mGuidCatDatatime;

  MedicalGuideModel(
      {this.mGuideElementsId,
      this.mGuideElementsName,
      this.mGuideElementsNameAr,
      this.mGuideElementsPhone,
      this.mGuideElementsSepcialization,
      this.mGuideElementsLocation,
      this.mGuideElementsHolidays,
      this.mGuidElementsCat,
      this.mGuidCatId,
      this.mGuidCatName,
      this.mGuidCatNameAr,
      this.mGuidCatDatatime});

  MedicalGuideModel.fromJson(Map<String, dynamic> json) {
    mGuideElementsId = json['m_guide_elements_id'];
    mGuideElementsName = json['m_guide_elements_name'];
    mGuideElementsNameAr = json['m_guide_elements_name_ar'];
    mGuideElementsPhone = json['m_guide_elements_phone'];
    mGuideElementsSepcialization = json['m_guide_elements_sepcialization'];
    mGuideElementsLocation = json['m_guide_elements_location'];
    mGuideElementsHolidays = json['m_guide_elements_holidays'];
    mGuidElementsCat = json['M_guid_elements_cat'];
    mGuidCatId = json['M_guid_cat_id'];
    mGuidCatName = json['M_guid_cat_name'];
    mGuidCatNameAr = json['M_guid_cat_name_ar'];
    mGuidCatDatatime = json['M_guid_cat_datatime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['m_guide_elements_id'] = this.mGuideElementsId;
    data['m_guide_elements_name'] = this.mGuideElementsName;
    data['m_guide_elements_name_ar'] = this.mGuideElementsNameAr;
    data['m_guide_elements_phone'] = this.mGuideElementsPhone;
    data['m_guide_elements_sepcialization'] = this.mGuideElementsSepcialization;
    data['m_guide_elements_location'] = this.mGuideElementsLocation;
    data['m_guide_elements_holidays'] = this.mGuideElementsHolidays;
    data['M_guid_elements_cat'] = this.mGuidElementsCat;
    data['M_guid_cat_id'] = this.mGuidCatId;
    data['M_guid_cat_name'] = this.mGuidCatName;
    data['M_guid_cat_name_ar'] = this.mGuidCatNameAr;
    data['M_guid_cat_datatime'] = this.mGuidCatDatatime;
    return data;
  }
}