import 'package:mercy_touch/Core/app_export.dart';

handlingData(Response) {
  if (Response is StatusRequest) {
    return Response;
  } else {
    return StatusRequest.success;
  }
}
