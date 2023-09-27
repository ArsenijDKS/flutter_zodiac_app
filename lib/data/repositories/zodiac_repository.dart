import 'dart:developer';

import 'package:flutter_zodiac_app/data/model/zodiac_model.dart';
import 'package:http/http.dart' as Http;
import 'package:flutter_zodiac_app/utilities/constants.dart';

void main() async {
  var response = await Http.get(
      Uri.parse(
          "https://sameer-kumar-aztro-v1.p.rapidapi.com/?sign=aquarius&day=today"),
      headers: {
        'X-RapidAPI-Key': Constants.ZODIAC_APP_ID,
        'X-RapidAPI-Host': Constants.ZODIAC_APP_HOST
      });

  if (response.statusCode == 200) {
    return log("okay");
  } else {
    return log("not okay");
  }
}
