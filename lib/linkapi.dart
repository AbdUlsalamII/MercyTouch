class AppLink {
  static const String server = "https://mercytouch0.com/mtapp";

  //* ===========================<Images>============================== //
  static const String imagepath = "$server/upload";
  static const String imageCategories = "$imagepath/categories";

  // test page
  static const String test = "$server/test.php";
  //* ===========================<Auth>================================ //
  static const String signup = "$server/auth/Signup.php";
  static const String login = "$server/auth/Login.php";
  static const String verfiycodesignup = "$server/auth/verifyCode.php";
  //* ======================<forgetpassword>=========================== //
  static const String checkemail = "$server/forgetpassword/checkemail.php";
  static const String verifycodeforgetpassword =
      "$server/forgetpassword/verifycode.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  //* ============================<Home>=============================== //
  static const String homepage = "$server/Home/home.php";
  static const String consultationpage = "$server/Consultation/consultation.php";
  static const String doctorspage = "$server/Consultation/Doctors.php";

  static const String laboratorypage = "$server/Laboratory/laboratory.php";


  static const String pharmacypage = "$server/Pharmacy/pharmacy.php";
    static const String drugspage = "$server/Pharmacy/drugs.php";


  static const String medicalguidepage = "$server/MedicalGuide/medicalguide.php";
  static const String medicalguideelementspage = "$server/MedicalGuide/medicalguideelements.php";
  
}
