import 'package:mercy_touch/Core/app_export.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child:
                Lottie.asset(AppImageAsset.loading3, width: 250, height: 250))
        : statusRequest == StatusRequest.loading
            ? Center(
                child: Lottie.asset(AppImageAsset.notfound2,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(child: Lottie.asset(AppImageAsset.notserver))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child:
                            Lottie.asset(AppImageAsset.notdata, repeat: false))
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child:
                Lottie.asset(AppImageAsset.loading3, width: 250, height: 250))
        : statusRequest == StatusRequest.loading
            ? Center(
                child: Lottie.asset(AppImageAsset.notfound2,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(child: Lottie.asset(AppImageAsset.notserver))
                : widget;
  }
}
