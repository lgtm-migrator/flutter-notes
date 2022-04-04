import 'package:http/http.dart' as http;

class BookDownload {

  // This method will download books JSON

  Future<String> getResponseFromApi() async {

    // https://webhook.site/d7e903ba-79ab-485e-984a-ecbf7de15e98
    
    String url ="https://webhook.site/f458a3bd-86f5-4a46-b48b-a523d6faeecf";
    //Uri
    // First Way to convert String to URI
    var uri_1 = Uri.parse(url);

    // Second way to convert String too URI 
    var uri_2 = Uri.https("webhook.site", "/d7e903ba-79ab-485e-984a-ecbf7de15e98");

    var client = http.Client();
    var response = await client.get(uri_1);

    return response.body;

  }
}