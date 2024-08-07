import 'package:mercy_touch/Core/app_export.dart';
import 'package:mercy_touch/View/Screen/Services/Consulutation/Doctors.dart';
import 'package:mercy_touch/View/Screen/Services/Laboratory/DoctorsLab.dart';
import 'package:mercy_touch/View/Screen/Services/MedicalGuide/MedicalGuideElements.dart';
import 'package:mercy_touch/View/Screen/Services/Pharmacy/Drugs.dart';


List<GetPage<dynamic>>? routes = [
  // ! TEST PAGE
    // GetPage(name: "/", page: () =>Consultation(),middlewares: [MyMiddleWare()]),

  //! Default First inter face
  GetPage(name: "/", page: () => const OnBoarding(),middlewares: [MyMiddleWare()]),
  //! OnBoarding
  GetPage(name: AppRoute.onBoarding, page: () =>  const OnBoarding()),
  //! Auth
  GetPage(name: AppRoute.login, page: () =>  Login()),
  GetPage(name: AppRoute.SginUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => ForgetPassword()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.verifiyCode, page: () => const VerifiyCode()),
  GetPage(name: AppRoute.SuccessResetPassword, page: () => SuccessResetPassword()),
  GetPage(name: AppRoute.SuccessSignUp, page: () => SuccessSignUp()),
  GetPage(name: AppRoute.VerifiyCodeSignUp, page: () => VerifiyCodeSignUp()),
  //!
  GetPage(name: AppRoute.Home, page: () => HomeScreen()),

  //!
  GetPage(name: AppRoute.MedicalGuide, page: () => MedicalGuide(),),
  GetPage(name: AppRoute.MedicalGuideElements, page: () => MedicalGuideElements()),
  
  //!
  GetPage(name: AppRoute.Consultation, page: () => Consultation()),
  GetPage(name: AppRoute.Doctors, page: () => Doctors()),
  
  //!
  GetPage(name: AppRoute.Pharmacy, page: () => Pharmacy()),
  GetPage(name: AppRoute.Drugs, page: () => Drugs()),
  //!
  GetPage(name: AppRoute.Laboratory, page: () => Laboratory()),
  GetPage(name: AppRoute.DoctorsLab, page: () => DoctorsLab()),




  // GetPage(name: AppRoute.TestHome, page: () => TestHome()),


  // GetPage(name: AppRoute.Doctors, page: () => Doctors()),

];


