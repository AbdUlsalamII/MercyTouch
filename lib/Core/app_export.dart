 // ignore: unused_export
export 'package:mercy_touch/Core/app_export.dart'; 

//*----------------------------------------------*//
export 'package:flutter/material.dart';
export 'package:mercy_touch/routes.dart';
export 'package:get/get.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:get/get_navigation/src/routes/get_route.dart';
export 'package:firebase_messaging/firebase_messaging.dart';
export 'dart:convert';
export 'package:lottie/lottie.dart';
export 'package:mercy_touch/linkapi.dart';
export 'package:shared_preferences/shared_preferences.dart';
export 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
export 'package:get/get_connect/http/src/utils/utils.dart';
export 'package:cached_network_image/cached_network_image.dart';

//*       <<<<<<<<<<<<<<<<<<- binding ->>>>>>>>>>>>>>>>>>>>>>>
export 'package:mercy_touch/binding/initialbindings.dart';

//*        <<<<<<<<<<<<<<<<<<- Core ->>>>>>>>>>>>>>>>>>>>>>>

//!--------------------------Constant-----------------------
export 'package:mercy_touch/Core/Constant/AppTheme.dart';
export 'package:mercy_touch/Core/Constant/color.dart';
export 'package:mercy_touch/Core/Constant/imageasset.dart';
export 'package:mercy_touch/Core/Constant/routes.dart';

//!----------------------------Class------------------------
export 'package:mercy_touch/Core/Class/crud.dart';
export 'package:mercy_touch/Core/Class/handlingdataview.dart';
export 'package:mercy_touch/Core/Class/statusRequest.dart';

//!--------------------------Functions----------------------
export 'package:mercy_touch/Core/Functions/alertExitApp.dart';
export 'package:mercy_touch/Core/Functions/checkInternet.dart';
export 'package:mercy_touch/Core/Functions/handlingDataController.dart';
export 'package:mercy_touch/Core/Functions/validInput.dart';

//!-------------------------Localization--------------------
export 'package:mercy_touch/Core/Localization/changelocal.dart';
export 'package:mercy_touch/Core/Localization/translation.dart';

//!---------------------------Services----------------------
export 'package:mercy_touch/Core/Services/services.dart';

//!---------------------------middleware--------------------
export 'package:mercy_touch/Core/middleware/mymiddleware.dart';

//*        <<<<<<<<<<<<<<<<<<- Data ->>>>>>>>>>>>>>>>>>>>>>>

//!---------------------------DataSource--------------------
export 'package:mercy_touch/Data/DataSource/remote/auth/login.dart';
export 'package:mercy_touch/Data/DataSource/remote/auth/signup.dart';
export 'package:mercy_touch/Data/DataSource/remote/auth/VerifiyCodeSignUp.dart';
export 'package:mercy_touch/Data/DataSource/remote/forgetpassword/verifycode.dart';
export 'package:mercy_touch/Data/DataSource/static/static.dart';
export 'package:mercy_touch/Data/DataSource/remote/test_data.dart';
export 'package:mercy_touch/Data/DataSource/remote/forgetpassword/checkemail.dart';
export 'package:mercy_touch/Data/DataSource/remote/forgetpassword/resetpassword.dart';
export 'package:mercy_touch/Data/DataSource/remote/home_data.dart';
export 'package:mercy_touch/Data/DataSource/remote/services/consultation/consultation_data.dart';
export 'package:mercy_touch/Data/DataSource/remote/services/medicalguide/medicalguide_data.dart';
export 'package:mercy_touch/Data/DataSource/remote/services/pharmacy/pharmacy_data.dart';

//!---------------------------Model--------------------------
export 'package:mercy_touch/Data/Model/services/Services.dart';
export 'package:mercy_touch/Data/Model/services/Consultaition/DoctorsModel.dart';
export 'package:mercy_touch/Data/Model/OnboardingModel.dart';
export 'package:mercy_touch/Data/Model/services/Consultaition/ConsultationCategoriesModel.dart';
export 'package:mercy_touch/Data/Model/services/MedicalGuide/MedicalGuideCategoriesModel.dart';
export 'package:mercy_touch/Data/Model/services/Pharmacy/PharmacyModel.dart';
export 'package:mercy_touch/Data/Model/services/MedicalGuide/MedicalGuideModel.dart';
export 'package:mercy_touch/Data/Model/services/Pharmacy/PharmacyCategoriesModel.dart';


//*     <<<<<<<<<<<<<<<<<<- Controller ->>>>>>>>>>>>>>>>>>>>>>>
export 'package:mercy_touch/Controller/auth/Login_controller.dart';
export 'package:mercy_touch/Controller/forgetpassword/ForgetPassword_controller.dart';
export 'package:mercy_touch/Controller/OnBoarding_controller.dart';
export 'package:mercy_touch/Controller/forgetpassword/ResetPassword_controller.dart';
export 'package:mercy_touch/Controller/forgetpassword/VerifyCode_controller.dart';
export 'package:mercy_touch/Controller/forgetpassword/SuccessReSetPassword_controller.dart';
export 'package:mercy_touch/Controller/auth/SignUp_controller.dart';
export 'package:mercy_touch/Controller/auth/VerifiyCodeSignUp_controller.dart';
export 'package:mercy_touch/Controller/auth/SuccessSignUp_controller.dart';
export 'package:mercy_touch/Controller/Home/home_controller.dart';
export 'package:mercy_touch/Controller/Home/homescreen_controller.dart';
export 'package:mercy_touch/Controller/Services/Consultation/Consultation_controller.dart';
export 'package:mercy_touch/Controller/Services/MedicalGuide/Medical_Guide_controller.dart';
export 'package:mercy_touch/Controller/Services/Pharmacy/Pharmacy_controller.dart';
export 'package:mercy_touch/Controller/Services/Consultation/Doctors_controller.dart';


//*        <<<<<<<<<<<<<<<<<<- View ->>>>>>>>>>>>>>>>>>>>>>>

//!---------------------Screen------------------------------
export 'package:mercy_touch/View/Screen/Home/Home.dart';
export 'package:mercy_touch/View/Screen/Onboarding.dart';
export 'package:mercy_touch/View/Screen/auth/ForgetPassword/ForgetPassword.dart';
export 'package:mercy_touch/View/Screen/auth/ForgetPassword/ResetPassword.dart';
export 'package:mercy_touch/View/Screen/auth/ForgetPassword/SuccessResetPassword.dart';
export 'package:mercy_touch/View/Screen/auth/ForgetPassword/VerifiyCode.dart';
export 'package:mercy_touch/View/Screen/auth/SignUp.dart';
export 'package:mercy_touch/View/Screen/auth/SuccessSignUp.dart';
export 'package:mercy_touch/View/Screen/auth/VerifiyCodeSignUp.dart';
export 'package:mercy_touch/View/Screen/auth/login.dart';
export 'package:mercy_touch/Workspace/test_screen.dart';
export 'package:mercy_touch/View/Screen/Home/HomeScreen.dart';
export 'package:mercy_touch/View/Screen/Services/Consulutation/Consultation.dart';
export 'package:mercy_touch/View/Screen/Services/Laboratory/Laboratory.dart';
export 'package:mercy_touch/View/Screen/Services/MedicalGuide/Medical_Guide.dart';
export 'package:mercy_touch/View/Screen/Services/Pharmacy/Pharmacy.dart';

//!---------------------Widget------------------------------
export 'package:mercy_touch/View/Widget/General/FramedButton.dart';
export 'package:mercy_touch/View/Widget/General/PrimaryButton.dart';
export 'package:mercy_touch/View/Widget/Auth/CustomGoToSignUpOrSignIn.dart';
export 'package:mercy_touch/View/Widget/Auth/CustomTextFormAuth.dart';
export 'package:mercy_touch/View/Widget/Auth/CustomTextSubTitleAuth.dart';
export 'package:mercy_touch/View/Widget/Auth/CustomTextTitleAuth.dart';
export 'package:mercy_touch/View/Widget/Auth/CustomForgetTextAuth.dart';
export 'package:mercy_touch/View/Widget/Auth/CustomContainerboxShadow.dart';
export 'package:mercy_touch/View/Widget/Auth/CustomSocialButton.dart';
export 'package:mercy_touch/View/Widget/Auth/Custom_or.dart';
export 'package:mercy_touch/View/Widget/OnBoarding/custom_button.dart';
export 'package:mercy_touch/View/Widget/OnBoarding/custom_slider.dart';
export 'package:mercy_touch/View/Widget/OnBoarding/dot_controller.dart';
export 'package:mercy_touch/View/Widget/General/CustomBg_Image.dart';
export 'package:mercy_touch/View/Widget/Home/topCard.dart';
export 'package:mercy_touch/View/Widget/customAppBar.dart';
export 'package:mercy_touch/View/Widget/Home/customtitlehome.dart';
export 'package:mercy_touch/View/Widget/services/Consultation/ListCategoriesDoctors.dart';
export 'package:mercy_touch/View/Widget/Home/listtopdoctors.dart';
export 'package:mercy_touch/View/Widget/Home/custombuttonappbar.dart';
export 'package:mercy_touch/View/Widget/Home/customBottomAppBarHome.dart';
export 'package:mercy_touch/View/Widget/Home/customFloatingActionButton.dart';
export 'package:mercy_touch/View/Widget/Home/listServices.dart';
export 'package:mercy_touch/View/Widget/Home/listtopLaps.dart';
export 'package:mercy_touch/View/Widget/services/MedicalGuide/ListCategoriesMedicalguide.dart';
export 'package:mercy_touch/View/Widget/services/Pharmacy/ListCategoriespharmacy.dart';
export 'package:mercy_touch/View/Widget/services/Pharmacy/PharmacyCard.dart';
export 'package:mercy_touch/View/Widget/services/Consultation/DoctorsCard.dart';
export 'package:mercy_touch/View/Widget/services/MedicalGuide/MedicalGuideCard.dart';
