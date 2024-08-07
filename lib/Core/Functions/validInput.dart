 import 'package:mercy_touch/Core/app_export.dart'; 

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Not valid username";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not valid email";
    } 
  }

  if (type == "mobile number") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not valid mobile number";
    }
  }
  if (val.isEmpty) {
    return "can't be Empty";
  }

  if (type == "date of birth") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not valid date of birth";
    }
  }

  if (val.length < min) {
    return "can't be less than $min";
  }

  if (val.length > max) {
    return "can't be larger than $max";
  }
}
