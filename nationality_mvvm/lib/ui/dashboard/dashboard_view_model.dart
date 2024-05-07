import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../models/national_model.dart';
import '../../services/api/api_services.dart';
import '../../services/locator.dart';

class DashBoardViewModel extends BaseViewModel {
  NationalResponse? _nationalResponse;

  NationalResponse? get getNationalList => _nationalResponse;

  List<Country>? get getCountryList {
    if (getNationalList == null) {
      return [];
    } else {
      return getNationalList!.country;
    }
  }

  final _apiService = locator<ApiService>();

  TextEditingController controller = TextEditingController();

  FetchData() async {
    setBusy(true);
    String nameFromEdit = controller.text.trim();
    _nationalResponse = await _apiService.getNationDetails(nameFromEdit);
    setBusy(false);
  }
}
