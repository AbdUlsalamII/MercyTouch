class DoctorsModel {
  int? doctorsId;
  String? doctorsEmail;
  String? doctorsPassword;
  String? doctorsName;
  int? doctorsPhone;
  String? doctorsImage;
  String? doctorsSpecialization;
  String? doctorsSummaryOfAchievements;
  int? doctorsYearOfExperiience;
  String? doctorsUniversity;
  String? doctorsDateofbirth;
  double? doctorsRating;
  String? doctorsClinicAddress;
  int? doctorsVerifycode;
  int? doctorsApprove;
  String? doctorsCreate;
  int? doctorsCat;
  int? doctorsCatId;
  String? doctorsCatName;
  String? doctorsCatNameAr;
  String? doctorsCatDatatime;

  DoctorsModel(
      {this.doctorsId,
      this.doctorsEmail,
      this.doctorsPassword,
      this.doctorsName,
      this.doctorsPhone,
      this.doctorsImage,
      this.doctorsSpecialization,
      this.doctorsSummaryOfAchievements,
      this.doctorsYearOfExperiience,
      this.doctorsUniversity,
      this.doctorsDateofbirth,
      this.doctorsRating,
      this.doctorsClinicAddress,
      this.doctorsVerifycode,
      this.doctorsApprove,
      this.doctorsCreate,
      this.doctorsCat,
      this.doctorsCatId,
      this.doctorsCatName,
      this.doctorsCatNameAr,
      this.doctorsCatDatatime});

  DoctorsModel.fromJson(Map<String, dynamic> json) {
    doctorsId = json['doctors_id'];
    doctorsEmail = json['doctors_email'];
    doctorsPassword = json['doctors_password'];
    doctorsName = json['doctors_name'];
    doctorsPhone = json['doctors_phone'];
    doctorsImage = json['doctors_image'];
    doctorsSpecialization = json['doctors_specialization'];
    doctorsSummaryOfAchievements = json['doctors_summary_of_achievements'];
    doctorsYearOfExperiience = json['doctors_year_of_experiience'];
    doctorsUniversity = json['doctors_university'];
    doctorsDateofbirth = json['doctors_dateofbirth'];
    doctorsRating = json['doctors_rating'];
    doctorsClinicAddress = json['doctors_clinic_Address'];
    doctorsVerifycode = json['doctors_verifycode'];
    doctorsApprove = json['doctors_approve'];
    doctorsCreate = json['doctors_create'];
    doctorsCat = json['doctors_cat'];
    doctorsCatId = json['doctors_cat_id'];
    doctorsCatName = json['doctors_cat_name'];
    doctorsCatNameAr = json['doctors_cat_name_ar'];
    doctorsCatDatatime = json['doctors_cat_datatime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['doctors_id'] = this.doctorsId;
    data['doctors_email'] = this.doctorsEmail;
    data['doctors_password'] = this.doctorsPassword;
    data['doctors_name'] = this.doctorsName;
    data['doctors_phone'] = this.doctorsPhone;
    data['doctors_image'] = this.doctorsImage;
    data['doctors_specialization'] = this.doctorsSpecialization;
    data['doctors_summary_of_achievements'] = this.doctorsSummaryOfAchievements;
    data['doctors_year_of_experiience'] = this.doctorsYearOfExperiience;
    data['doctors_university'] = this.doctorsUniversity;
    data['doctors_dateofbirth'] = this.doctorsDateofbirth;
    data['doctors_rating'] = this.doctorsRating;
    data['doctors_clinic_Address'] = this.doctorsClinicAddress;
    data['doctors_verifycode'] = this.doctorsVerifycode;
    data['doctors_approve'] = this.doctorsApprove;
    data['doctors_create'] = this.doctorsCreate;
    data['doctors_cat'] = this.doctorsCat;
    data['doctors_cat_id'] = this.doctorsCatId;
    data['doctors_cat_name'] = this.doctorsCatName;
    data['doctors_cat_name_ar'] = this.doctorsCatNameAr;
    data['doctors_cat_datatime'] = this.doctorsCatDatatime;
    return data;
  }
}