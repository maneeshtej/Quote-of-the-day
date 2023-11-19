import 'dart:convert';

import 'package:http/http.dart' as http;

class GetQuotes {
  String? url;
  List? notes;
  List actualNotes = [];

  getQuotes() async {
    String url = "https://type.fit/api/quotes";
    http.Response response = await http.get(Uri.parse(url));
    // print(response.body);
    List notes = json.decode(response.body);
    // print(notes);
    for (int i = 0; i < notes.length; i++) {
      actualNotes.add(notes[i]["text"]);
    }
    // print(actualNotes);
  }
}
