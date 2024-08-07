class LaboratoryModel {
  int? labsId;
  String? labsEmail;
  String? labsPassword;
  String? labsName;
  int? labsPhone;
  String? labsImage;
  int? labsYearOfWork;
  double? labsRating;
  String? labsAddress;
  int? labsVerifycode;
  int? labsApprove;
  String? labsCrate;
  int? labsCat;

  LaboratoryModel(
      {this.labsId,
      this.labsEmail,
      this.labsPassword,
      this.labsName,
      this.labsPhone,
      this.labsImage,
      this.labsYearOfWork,
      this.labsRating,
      this.labsAddress,
      this.labsVerifycode,
      this.labsApprove,
      this.labsCrate,
      this.labsCat});

  LaboratoryModel.fromJson(Map<String, dynamic> json) {
    labsId = json['labs_id'];
    labsEmail = json['labs_email'];
    labsPassword = json['labs_password'];
    labsName = json['labs_name'];
    labsPhone = json['labs_phone'];
    labsImage = json['labs_image'];
    labsYearOfWork = json['labs_year_of_work'];
    labsRating = json['labs_rating'];
    labsAddress = json['labs_address'];
    labsVerifycode = json['labs_verifycode'];
    labsApprove = json['labs_approve'];
    labsCrate = json['labs_crate'];
    labsCat = json['labs_cat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['labs_id'] = this.labsId;
    data['labs_email'] = this.labsEmail;
    data['labs_password'] = this.labsPassword;
    data['labs_name'] = this.labsName;
    data['labs_phone'] = this.labsPhone;
    data['labs_image'] = this.labsImage;
    data['labs_year_of_work'] = this.labsYearOfWork;
    data['labs_rating'] = this.labsRating;
    data['labs_address'] = this.labsAddress;
    data['labs_verifycode'] = this.labsVerifycode;
    data['labs_approve'] = this.labsApprove;
    data['labs_crate'] = this.labsCrate;
    data['labs_cat'] = this.labsCat;
    return data;
  }
}