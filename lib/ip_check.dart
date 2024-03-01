//https://api.ipify.org
//https://ipapi.co/json/
//regione, codice postale, città
import "package:http/http.dart" as http;
import "dart:convert";
import "models/ip.dart";


Future<Ip> getIp() async {
  final url = Uri.parse("https://ipapi.co/json/");
  final res = await http.get(url);
  final Map<String, dynamic> data = json.decode(res.body);
  

  return Ip(ip: data["ip"], city: data["city"], region: data["region"], codPostale: data["postal"] );
}
